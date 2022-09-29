#!/usr/bin/env bash

#Autor: Túlio Braga

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -c "Carlos Pestana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Ferreira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Débora Sousa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Pereira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd robert -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina Costa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd Amanda -c "Amanda Sousa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Feitosa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Especificando permissões de acesso aos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "**FIM**"









