#!/bin/bash

echo "......"
echo "Script de IaC -> Desafio DIO Linux Experience"
echo "......"
echo "1º Etapa: Removendo diretórios, arquivos, grupos e usuários criados anteriormente." 
echo "......"

sudo rm -rf /publico
sudo rm -rf /adm
sudo rm -rf /ven
sudo rm -rf /sec

sudo userdel -rf carlos
sudo userdel -rf maria
sudo userdel -rf joao
sudo userdel -rf debora
sudo userdel -rf sebastiana
sudo userdel -rf roberto
sudo userdel -rf josefina
sudo userdel -rf amanda
sudo userdel -rf rogerio

sudo groupdel -f carlos
sudo groupdel -f maria
sudo groupdel -f joao
sudo groupdel -f debora
sudo groupdel -f sebastiana
sudo groupdel -f roberto
sudo groupdel -f josefina
sudo groupdel -f amanda
sudo groupdel -f rogerio
sudo groupdel -f GRP_ADM
sudo groupdel -f GRP_VEN
sudo groupdel -f GRP_SEC

echo "2º Etapa: Criando diretórios, arquivos, grupos e usuários."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

sudo useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -5 Senha123) -g
sudo useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -5 Senha123)
sudo useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -5 Senha123)


echo "3º Etapa: Atribuindo usuários aos grupos , definindo propriedade da pasta e permissões de pasta."

sudo usermod -g GRP_ADM carlos
sudo usermod -g GRP_ADM maria
sudo usermod -g GRP_ADM joao
sudo usermod -g GRP_VEN debora
sudo usermod -g GRP_VEN sebastiana
sudo usermod -g GRP_VEN roberto
sudo usermod -g GRP_SEC josefina
sudo usermod -g GRP_SEC amanda
sudo usermod -g GRP_SEC rogerio

sudo chown root:GRP_ADM /adm/
sudo chown root:GRP_VEN /ven/
sudo chown root:GRP_SEC /sec/
sudo chown root:root /publico/

sudo chmod 770 /adm/
sudo chmod 770 /ven/
sudo chmod 770 /sec/
sudo chmod 777 /publico/

echo "Estrutura baseada em Script criada com sucesso." 

