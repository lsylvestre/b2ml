#!/bin/bash

MAKE="make B2ML_FLAGS=$@"

$MAKE

$MAKE expect I=bench/arithmetique/sample000  EXPECTED=""

$MAKE expect I=bench/array/sample000  EXPECTED=""
$MAKE expect I=bench/array/sample001  EXPECTED="42"
$MAKE expect I=bench/array/sample002  EXPECTED="12345678"
$MAKE expect I=bench/array/sample003  EXPECTED=""

$MAKE expect I=bench/constants_as_intervals/sample000  EXPECTED=""
$MAKE expect I=bench/constants_as_intervals/sample001  EXPECTED=""


$MAKE expect I=bench/default_value/sample000  EXPECTED=""
$MAKE expect I=bench/default_value/sample001  EXPECTED=""
$MAKE expect I=bench/default_value/sample002  EXPECTED=""
$MAKE expect I=bench/default_value/sample003  EXPECTED=""
$MAKE expect I=bench/default_value/sample004  EXPECTED=""
$MAKE expect I=bench/default_value/sample005  EXPECTED=""

$MAKE expect I=bench/ill_typed/sample000  EXPECTED=""

$MAKE expect I=bench/includes/sample000  M="m0 m1"

$MAKE expect I=bench/modules/sample000  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/modules/sample001  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/modules/sample002  M="m0 m1 m2" EXPECTED="42"

$MAKE expect I=bench/operations/sample000  EXPECTED="42"

$MAKE expect I=bench/refinement/sample000
$MAKE expect I=bench/refinement/sample001
$MAKE expect I=bench/refinement/sample002 M="m0 m1"

# Les variables et constantes d'un module sont bien accessibles 
# par les machines qui la voient (clause sees). 
# Attention au capture ! si une machine est vue, son implementation aussi ! 
$MAKE expect I=bench/sees/sample000  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/sees/sample001  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/sees/sample002  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/sees/sample003  M="m0 m1" EXPECTED="42"

# vérifie que la clause sees n'est pas transitive
$MAKE expect I=bench/sees/sample004  M="m0 m1" EXPECTED="42"
$MAKE expect_traduction_error I=bench/sees/sample004  M="m0 m1 m2" EXPECTED="Unbound value v1"

$MAKE expect I=bench/sets/sample000  EXPECTED=""

$MAKE expect I=bench/subtyping/sample000  EXPECTED="42"
$MAKE expect I=bench/subtyping/sample001  EXPECTED=""
$MAKE expect I=bench/subtyping/sample002  EXPECTED=""

$MAKE expect I=bench/mch_parameters/sample000  M="m0 m1"   EXPECTED="42"
$MAKE expect I=bench/mch_parameters/sample001  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/mch_parameters/sample002  M="m0 m1" EXPECTED="42"
$MAKE expect I=bench/mch_parameters/sample002  M="m0 m1" EXPECTED="4242" # à discuter

$MAKE expect I=bench/partage/sample000/  M="m0 m1 m2" EXPECTED="4221"
$MAKE expect I=bench/partage/sample001/  M="m0 m1 m2" EXPECTED="4221"
# I=bench/subtyping/sample000, TODO

$MAKE expect I=bench/fuel M="utils ctx measure fuel0" EXPECTED=""
