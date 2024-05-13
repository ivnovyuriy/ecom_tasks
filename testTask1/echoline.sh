#!/bin/bash

# Значения по умолчанию
interval=5
message="HELLO WORLD"

# Функция для вывода помощи
usage() {
    echo "Usage: $0 [-i interval] [-m message]"
    echo "  -i, --interval   Set the interval between messages (default is 5 seconds)"
    echo "  -m, --message    Set the message to display (default is 'HELLO WORLD')"
    exit 1
}

# Парсинг аргументов командной строки
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -i|--interval) interval="$2"; shift ;;
        -m|--message) message="$2"; shift ;;
        -h|--help) usage ;;
        *) echo "Unknown parameter passed: $1"; usage ;;
    esac
    shift
done

# Основной цикл скрипта
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message"
    sleep $interval
done

