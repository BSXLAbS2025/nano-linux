#!/bin/sh
while true; do
    # Получаем свободную память и время
    MEM=$(free -h | awk '/Mem:/ { print $3 "/" $2 }')
    DATE=$(date +"%H:%M")
    # Выводим в корень окна (dwm это прочитает)
    xsetroot -name " RAM: $MEM | $DATE "
    sleep 10
done
