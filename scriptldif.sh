#!/bin/bash
uid=Piloto1
ou=Pilotos
var_1dc=Endor
var_2dc=ally
classObject1=inetOrgPerson
classObject2=posixAccount
classObject3=person
primeralinea=uid=$uid,ou=$ou,dc=$var_1dc,dc=$var_2dc
echo dn: $primeralinea
echo classObject: $classObject1
echo classObject: $classObject2
echo classObject: $classObject3
echo uid: $uid
echo dn: $primeralinea > salida.ldif
echo classObject: $classObject1 >> salida.ldif
echo classObject: $classObject2 >> salida.ldif
echo classObject: $classObject3 >> salida.ldif
echo uid: $uid >> salida.ldif
