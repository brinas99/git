#!/bin/bash
let uid
let ou
let var_1dc
let var_2dc
let sn
uidNumber=1
gidNumber=1
read -p "Nombre: " uid
read -p "Apellido: " sn
read -p "Unidad organizativa: " ou
read -p "Nombre de dominio: " var_1dc
read -p "Exatension de dominio: " var_2dc
objectClass1=inetOrgPerson
objectClass2=posixAccount
objectClass3=person
primeralinea=uid=$uid,ou=$ou,dc=$var_1dc,dc=$var_2dc
echo dn: $primeralinea
echo objectClass: $objectClass1
echo objectClass: $objectClass2
echo objectClass: $objectClass3
echo uid: $uid
echo cn: $uid
echo sn: $sn
echo givenName: $uid
echo userPassword: $uid
echo loginShell: /bin/bash
echo uidNumber: $uidNumber
echo gidNumber: $gidNumber
echo homeDirectory: /home/$uid
echo dn: $primeralinea > salida2.ldif
echo objectClass: $objectClass1 >> salida2.ldif
echo objectClass: $objectClass2 >> salida2.ldif
echo objectClass: $objectClass3 >> salida2.ldif
echo uid: $uid >> salida2.ldif
echo cn: $uid >> salida2.ldif
echo sn: $sn >> salida2.ldif
echo givenName: $uid >> salida2.ldif
echo userPassword: $uid >> salida2.ldif
echo loginShell: /bin/bash >> salida2.ldif
echo uidNumber: $uidNumber >> salida2.ldif
echo gidNumber: $gidNumber >> salida2.ldif
echo homeDirectory: /home/$uid >> salida2.ldif
