#!/usr/bin/env bash

#
# Baixar videos  youtube-dl
#

# escolher a pasta que  ficara o video:
# o diretorio padrão sera o /Videos:

# vars:
caminho="/home/rocha/videos"

read -p "Digite o nome do diretorio que ficara o video " vid

# entrando no diretorio padrao:
cd /home/rocha/Videos/

# testando se o  arquivo foi criado, caso não crie:
if [[ ! -e /home/rocha/Videos/$vid ]]
then
    mkdir -p $vid
    cd $vid
fi 

# Entrar com o link do youtube-dl
read -p "Entre com o link do youtube-dl " link

# usuario vai escolher como quer baixar o video ou só audio:
read -p "
        Escolhe se quer baixar só o video ou só o audio

        1) Só o Video do Youtube
        2) Sõ o Audio do Youtube
        
         " esc
# verificar se o ususrio digitou os numeros ou nao digitou nada:

if [[ $esc = [:alnum:] || $sc = [:punct:] || $esc = [:black:] || $esc = [:cntrl:] || $sec = [:space:] ]]
then
    echo "Solicitação invalida, Digite somente 1 ou 2 Saindo" && exit 1
fi

case $esc in

1) youtube-dl  -cit -f best $link 
        read -p "Quer abrir o vídeo? Sim ou Não Digite S/N" quer
        if [[ "S" = "S" ]]; then
            smplayer $dir$vid        if
        

;;
2) youtube-dl  -cit -x --audio-format mp3 $link
;;

esac


