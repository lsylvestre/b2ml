# B2ML


Traducteur **B** vers **OCaml**.

### Installation 

avec *opam* 
```
$ opam switch create ocaml-base-compiler.4.08.0
$ opam install menhir
$ make
```

 ~> produit l'exécutable `./b2ml`.

### Utilisation 

`./b2ml` traduit les sources **B** passés en arguments :
```
  ./b2ml <filenames>
```
Par défaut, le programme engendré se situe dans le fichier `generated_files/b_translation.ml`

- Options `-dst` et `-o`

La commande `./b2ml -dst=generated_files -o="traduction" <filenames>` engendre le programme OCaml **generated_files/traduction.ml** .

- Option `-I`

`./b2ml -I=dir f1 f2 f3` est une abréviation pour `./b2ml dir/f1 dir/f2 dir/f3`

- Ordre des fichiers
les machines doivent être passés par ordre de dépendances. 
l'ordre des raffinements et implémentations n'importe pas.

- avec le Makefile

`make translate I=dir M="m0 m1 m2"` est une abréviation pour `./b2ml dir/m0/* dir/m1/* dir/m2/*`

- options `-externals` 
 
  `./b2ml -externals=init.ml f1 f2 f3` traduit ajoute le contenu du fichier `init.ml` dans le source engendré par traduction de `f1`, `f2` et `f3`.

### Intéropérabilité avec **OCaml**

Les *machines de bases* sont des machines **B** qui n'ont pas d'implémentation en **B**. Les fichiers d'implémentation **OCaml** peuvent être donnés à `b2ml` via l'option `-externals`. Cependant, le traducteur doit également connaitre les types des valeurs et opérations déclarées définies dans ces fichiers **OCaml**. Ces informations, contenues dans le corps des machines de bases, sont difficile à extraire. On déclarera donc une machine de base avec une syntaxe alternative. Par exemple une machine `string_lib` :

```
EXTERNALS string_lib
  max_size : INT &
  concat : STRING * STRING -> STRING &
  print : OPERATION((),STRING)
END
```

- grammaire des expressions de types

```
<ty> ::=  
 | (<ty>) 
 | INT | BOOL | STRING                ; types primitifs
 | <ident>                            ; type abstrait
 | <ty> * <ty> * ... * <ty>           ; n-uplet
 | POW (<ty> * ... * <ty>)            ; type tableau
 | Struct (<ident> : <ty>, ...)       ; type enregistrement
 | OPERATION                          ; type opération
       ((out1,out2,...,outn),             ; paramètres de sortie
        (arg1,arg2,...,argn))             ; paramètres d'entrée
 | <ty> * <ty> * ... * <ty> --> <ty>  ; type primitive
```

- Regle d'anticollision des identificateurs

  En B, *"un identificateur est une séquence de lettres, de chiffres ou du caractère souligné "_". 
         Le premier caractère doit être une lettre. Les lettres minuscules et majuscules sont distinguées."*

Par convention, on choisit trois règles de traduction des identificateurs **B** vers **OCaml** :
  - la traduction d'un identificateur `xx` vers un identificateur de variable ou de type **OCaml** est `_xx`
  - la traduction d'un identificateur `xx` vers un identificateur de module **OCaml** est `M_xx`
  - la traduction d'un identificateur `xx` vers un identificateur de constructeur **OCaml** est `C_xx`

Ces règles doivent être prisent en compte lorsque l'on souhaite implanter en **OCaml** une machine de base **B**.
Par exemple :
```
module M_string_lib = struct
  let _max_size = Sys.max_string_length
  let _concat = (@)
  let _print = print_string
end
```

### Tests

- avec le Makefile

La commande `make expect I=bench/partage/sample001 M="m0 m1 m2" EXPECTED="4221"` 
traduits les sources B souhaités, compile le programme OCaml produit, puis l'execute et teste que l'executable OCaml imprime bien `"4221"` sur la sortie standard.

Le résultat et `--> ok` ou  `--> ko`.

- avec un script

Le dossier **bench** contient des jeux de tests.
Le script `./test.sh` vérifie le comportement de `b2ml` sur ces jeux de tests (via la commande `make expect`).


### Exemple

Soient les 3 modules **B** suivants (cf. *bench/partage/sample001*):
```
MACHINE m0 END

IMPLEMENTATION i0
  REFINES m0
  CONCRETE_VARIABLES v
  INITIALISATION v := 42
  OPERATIONS setV = v := 21 
END

MACHINE m1 END

IMPLEMENTATION i1
  REFINES m1
  EXTENDS r.m0
  INITIALISATION #print_int r.v; r.setV
END

MACHINE m2 END

IMPLEMENTATION i2
  REFINES m2
  EXTENDS r.m0
  INITIALISATION #print_int r.v
END
```

La commande `make translate I=bench/partage/sample001 M="m0 m1 m2"`
produit le code OCaml suivant, qui imprime sur la sortie standard la chaîne "4221" :

```ocaml
module MakeM_m0 (Parameters : sig end) = 
  struct
    (* variables *) 
    let v = ref 0 
    (* operations *) 
    let setV () = v := 21 
    (* initialisation *) 
    let () = v := 42
  end ;;
 
module M_m0 = MakeM_m0 (struct end) ;;
 
module M_r = MakeM_m0 (struct end) ;;
 
module MakeM_m1 (Parameters : sig end) = 
  struct
    (* initialisation *) 
    let () = print_int (! M_r.v);
M_r.setV ()
  end ;;
 
module M_m1 = MakeM_m1 (struct end) ;;
 
module MakeM_m2 (Parameters : sig end) = 
  struct
    (* initialisation *) 
    let () = print_int (! M_r.v)
  end ;;
 
module M_m2 = MakeM_m2 (struct end) ;;
``` 

