# B2ML
====

Traducteur **B0** vers **OCaml**.

#### Installation 

avec *opam* 
```
$ opam switch create ocaml-base-compiler.4.08.0
$ opam install menhir
$ make
```

~> produit l'exécutable `./b2ml`.

#### Utilisation 

`./b2ml` traduit les sources B passés en argument :
```
  ./b2ml <filenames>
```
Par défaut, le programme engendré se situe dans le fichier `generated_files/b_translation.ml`

- Options *-dst* et *-o*

La commande `./b2ml -dst=generated_files -o="traduction" <filenames>` engendre le programme OCaml **generated_files/traduction.ml** .

- Option -I

`./b2ml -I=dir f1 f2 f3` est une abréviation pour `./b2ml dir/f1 dir/f2 dir/f3`

- Ordre des fichiers
les machines doivent être passés par ordre de dépendances. 
l'ordre des raffinements et implémentations n'importe pas.

- avec le Makefile

`make translate I=dir M="m0 m1 m2"` est une abréviation pour `./b2ml dir/m0/* dir/m1/* dir/m2/*`

- options *-obj* et *-fun*

Par défaut, le code généré utilise le système de module d'OCaml pour représenter les modules B.

L'option *-obj* (experimentale !!) réalise une traduction des modules B vers des classes et des objets OCaml.

L'option *-fun* (experimentale !!) réalise une traduction d'un sous-ensemble de B vers un programme OCaml purement fonctionnel. Le renommage et les machines paramétrés ne sont pas supportés.

### Tests

- avec le Makefile

La commande `make expect I=bench/partage/sample001 M="m0 m1 m2" EXPECTED="4221"` 
traduits les sources B souhaités, compile le programme OCaml produit, puis l'execute et teste que l'executable OCaml imprime bien `"4221"` sur la sortie standard.

Le résultat et `--> ok` ou  `--> ko`.

- avec un script

Le dossier **bench** contient des jeux de tests.
Le script `./test.sh` vérifie le comportement de `b2ml` sur ces jeux de tests (via la commande `make expect`).


#### Exemple

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

