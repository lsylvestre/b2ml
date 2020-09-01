#############################################################################
### B2ML, août 2020                                                        ##
#############################################################################

CAMLC=ocamlc
CAMLLEX=ocamllex
MENHIR=menhir --explain  # --interpret
CAMLDEP=ocamldep

B2ML=b2ml
B2ML_FLAGS=

INCLUDES=

DST=generated_files
TMP=tmp

OBJS=err.cmo types.cmo ast.cmo \
	prelex.cmo parser.cmo lexer.cmo \
	typing.cmo names.cmo \
	runtime.cmo\
	fun_ast.cmo fun_pprint.cmo fun_translate.cmo \
	target.cmo pprint.cmo translate.cmo \
	class_translate.cmo \
	main.cmo

SRC-OBJS=$(foreach f,$(OBJS),$(SRC-DIR)$f)


all: $(TMP) $(DST) $(SRC-OBJS) prelex.ml lexer.ml parser.ml
	$(CAMLC) $(FLAGS) $(INCLUDES) -o $(B2ML) $(OBJS)

.SUFFIXES: .mll .mly .ml .mli .cmo .cmi 

.ml.cmo:
	$(CAMLC) $(INCLUDES) $(FLAGS) -c $<

.mli.cmi:
	$(CAMLC) $(INCLUDES) $(FLAGS) -c $<

.mly.ml:
	$(MENHIR) $<

.mll.ml:
	$(CAMLLEX) $<

clean:	clean_dst
	rm -f parser.conflicts
	rm -f $(B2ML)
	rm -f *~ *.cm[oix]

$(DST):
	mkdir $(DST)

$(TMP):
	mkdir $(TMP)

depend:
	$(CAMLDEP) $(INCLUDES) $(SRC-DIR)*.mly $(SRC-DIR)*.mll $(SRC-DIR)*.mli $(SRC-DIR)*.ml > .depend

include .depend

########
## Tests

I=""
M=""

TRANSLATION_ML=b_translation.ml
EXE_TRANSLATION=$(DST)/translation

MFILES=$(foreach f,$(M),$(I)/$(f)/*)
EXPECTED=

clean_dst:
	rm -rf $(DST)/*.ml $(DST)/*.cm[oi] $(EXE_TRANSLATION)

translate:	clean_dst
	./$(B2ML) $(B2ML_FLAGS) -o $(TRANSLATION_ML) $(MFILES)

compile:
	ocamlc -o $(EXE_TRANSLATION) $(DST)/$(TRANSLATION_ML)

run:
	./$(EXE_TRANSLATION)

.PHONY: expect
expect:	translate compile 
	@test "$(shell ./$(EXE_TRANSLATION))" = "$(EXPECTED)"\
    || { echo "--> ko, I run [./$(EXE_TRANSLATION)]. I expected $(EXPECTED).\n\n"; exit 2; } \
    && { echo "--> ok\n\n"; }

expect_traduction_error:	
	@test "$(shell ./$(B2ML) $(B2ML_FLAGS) -o $(TRANSLATION_ML) $(MFILES) | tail -n 1)" = "$(EXPECTED)"\
    || { echo "--> ko. I expected $(EXPECTED).\n\n"; exit 2; } \
    && { echo "--> ok\n\n"; }

test:	translate compile run
	echo

test-op:
	./b2ml test/test-op/m0.txt test/test-op/op.txt

test-mch-params:
	./b2ml test/test-mch-params/ma.txt test/test-mch-params/mb.txt test/test-mch-params/imp.txt
