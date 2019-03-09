#!/bin/bash
#ну вот 8 версия... это удобнее...
#сюда будет отдельный репозиторий на гитхабе.

#копируем сам скрипт

function quest {
echo '[question]:' $1
read ban
case $ban in
y)
echo 
;;
*)
message 'отменено пользователем'
exit 0 
;;
esac
}

function message {
echo "[tvsgui] message:"  $1 ; }

function list {
echo '[list]' '[' $1 ']'  ; }


message 'установка...'
cp tvsgui /usr/local/bin/
chmod +x /usr/local/bin/tvsgui

echo Необходимые момпоненты:
echo
list 'git'
list 'tvspkg 2.6.9-0+'
list 'tightvncserver 1.0+'
list 'lxpanel 1.0+'
list 'nautilus 1.0+'
list 'openbox 1.0+'
list 'zenity 1.0+'
#ну и запускаем установку
quest 'Установить компоненты?'
apt install lxpanel nautilus openbox zenity git -y >> /dev/null
git clone https://github.com/tvsclass/tvspkg >> /dev/null
cd tvspkg
rm /usr/local/bin/tvsgui
cp tvspkg /usr/bin/
chmod +x /usr/bin/tvspkg 
cd ..
cp tvsgui /usr/bin/
chmod +x /usr/bin/tvsgui
message 'Установка завершена.'

#ну всё. действия этого скрипта завершены
