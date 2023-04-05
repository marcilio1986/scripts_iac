 #! /bin/bash

echo "Script de criação de Estrutura de Usuários, Diretorios e Permissões "

echo "Criando Diretorios... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos ..... "


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários....."

useradd carlos -c "Usuário Carlos do Administrativo  " -m -s /bin/bash -D -G GRP_ADM 
useradd maria -c "Usuário Maria do Administrativo  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "Usuário João do Administrativo  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM


useradd debora -c "Usuário Debora do Vendas  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Usuário Sebastiana do Vendas  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Usuário Roberto do Vendas  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Usuário Josefina do Secretariado  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Usuário Amanda do Secretariado  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Usuário Rogerio do Secretariado  " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Definindo as Permissoes dos Diretorios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim ......"





