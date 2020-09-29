#*****************************************#
#** B2ML, un traducteur de B vers OCaml **#
#** ----------------------------------- **#
#** septembre 2020                      **#
#** loic.sylvestre@etu.upmc.fr          **#
#*****************************************#

CAMLC=ocamlc
CAMLLEX=ocamllex
MENHIR=menhir
CAMLDEP=ocamldep

B2ML=b2ml
B2ML_FLAGS=

INCLUDES=

DST=generated_files
TMP=tmp

OBJS=err.cmo types.cmo ast.cmo \
	prelex.cmo parser.cmo lexer.cmo typing.cmo \
	target.cmo \
	pprint.cmo\
	names.cmo translate.cmo \
	merge.cmo main.cmo

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
	rm -rf tmp

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

CLOCK=bench/clock
clock:
	./b2ml \
	 -externals=$(CLOCK)/externals.ml\
	 $(CLOCK)/externals.txt\
	 $(CLOCK)/g_types.mch\
	 $(CLOCK)/user_configuration.mch\
	 $(CLOCK)/lchip_configuration.mch\
	 $(CLOCK)/user_ctx.mch\
	 $(CLOCK)/inputs.mch\
	 $(CLOCK)/logic.mch\
	 $(CLOCK)/outputs.mch\
	 $(CLOCK)/user_component.mch\
	 $(CLOCK)/g_types_i.imp $(CLOCK)/user_component_i.imp\
	 $(CLOCK)/inputs_i.imp $(CLOCK)/user_configuration_i.imp\
	 $(CLOCK)/logic_i.imp $(CLOCK)/user_ctx_i.imp\
	 $(CLOCK)/outputs_i.imp

interop:
	./b2ml -I=bench/interop/sample000 runtime.txt -externals=runtime.ml i0.txt m0.txt
interop2:
	./b2ml -I=bench/interop/sample001 runtime.txt -externals=runtime.ml i0.txt m0.txt