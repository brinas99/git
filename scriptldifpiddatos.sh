#!/bin/bash
let uid
let ou
let var_1dc
let var_2dc
let sn
read -p "Nombre: " uid
read -p "Apellido: " sn
read -p "Unidad organizativa: " ou
read -p "Nombre de dominio: " var_1dc
read -p "Exatension de dominio: " var_2dc
classObject1=inetOrgPerson
classObject2=posixAccount
classObject3=person
primeralinea=uid=$uid,ou=$ou,dc=$var_1dc,dc=$var_2dc
echo dn: $primeralinea
echo classObject: $classObject1
echo classObject: $classObject2
echo classObject: $classObject3
echo uid: $uid
echo sn: $sn
echo dn: $primeralinea > salida2.ldif
echo classObject: $classObject1 >> salida2.ldif
echo classObject: $classObject2 >> salida2.ldif
echo classObject: $classObject3 >> salida2.ldif
echo uid: $uid >> salida2.ldif
echo sn: $sn >> salida2.ldif
