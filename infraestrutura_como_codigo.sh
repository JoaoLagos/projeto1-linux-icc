#!/bin/bash

#Código desenvolvido pelo BootCamp da DIO, Linux Experience.
#Esse código tem como objetivo criar diretórios, grupos e usuários de uma rede de uma empresa e adicionar as devidas permissões de acordo com o enunciado.

echo "Criando 4 diretórios (/publico; /adm; /ven; /sec), todos com seu referente dono e grupo"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando 3 grupos (GRP_ADM; GRP_VEN; GRP_SEC)"
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC 

echo "Colando os diretórios com seus respectivos donos e grupo e dando as devidas permissões."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando usuários e colocando no grupo pertencente"
useradd carlos -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 1234567890) -G GRP_SEC

echo "==========="
echo "FINALIZADO."
echo "==========="
