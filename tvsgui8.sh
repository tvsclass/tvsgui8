#!/bin/bash
toilet tvsgui 8 --metal
echo closed beta. 2sc

#ну вот 8 версия... тут моноскрипт, это удобнее...
#сюда будет отдельный репозиторий на гитхабе.

#копируем сам скрипт

echo installing...
cp tvsgui /usr/local/bin/
chmod +x /usr/local/bin/tvsgui

#ну и запускаем установку

tvsgui --install

#ну всё. действия этого скрипта завершены