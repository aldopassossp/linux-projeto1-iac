#!/bin/bash

echo "Inicio da criação de infraestrutura"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretariado

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

echo "Grupo administrativo..."
useradd carlos -m -c "Carlos setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd carlos -e
useradd maria -m -c "Maria setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd maria -e
useradd joao -m -c "João setor Administrativo" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt 1234)
passwd joao -e

echo "Grupo de vendas..."
useradd debora -m -c "Débora setor de Vendas" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt 1234)
passwd debora -e
useradd sebastiana -m -c "Sebastiana setor de Vendas" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt 1234)
passwd sebastiana -e
useradd roberto -m -c "Roberto setor de Vendas" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt 1234)
passwd roberto -e

echo "Grupo de secretaria..."
useradd josefina -m -c "Josefina sertor de Secretaria" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd josefina -e
useradd amanda -m -c "Amanda sertor de Secretaria" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd amanda -e
useradd rogerio -m -c "Rogério sertor de Secretaria" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt 1234)
passwd rogerio -e

echo "Novos usuários devem realizar alteração da senha padrão no primeiro acesso"

echo "Atribuindo permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /vendas
chown root:GRP_SEC /secretaria

chmod 777 /publico
chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretaria

echo "Configuração concluída!"
