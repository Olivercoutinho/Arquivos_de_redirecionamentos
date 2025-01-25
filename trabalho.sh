#!/bin/bash

sudo apt-get install -y fortune

fortune | tee mensagem1.txt
fortune | tee mensagem2.txt
fortune | tee mensagem3.txt


cat mensagem1.txt mensagem2.txt mensagem3.txt | tee mensagens.txt

cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens.txt

wc -l mensagens.txt | cut -d " " -f 1 > linhas.txt

egrep -e "a" -o mensagens.txt | wc -l > letras.txt

ls -R /etc > saida.txt 2> erros.txt

ls -R /etc &> saida_com_erros.txt

cut -d ":" -f 1 /etc/passwd > usuarios.txt

cut -d ":" -f 1 /etc/passwd | sort > usuarios_ordenados.txt
