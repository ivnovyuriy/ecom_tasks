# Используем базовый образ Alpine Linux за его легковесность и простоту
FROM alpine:latest

# Устанавливаем bash, так как скрипт написан для bash, не для sh
RUN apk add --no-cache bash

# Устанавливаем аргументы, которые можно задать при сборке образа
ARG INTERVAL=1
ARG MESSAGE="ON AIR"

# Присваиваем значения аргументов переменным окружения, чтобы они были доступны во время выполнения
ENV INTERVAL=$INTERVAL
ENV MESSAGE=$MESSAGE

# Создаем рабочую директорию для скрипта
WORKDIR /app

# Копируем скрипт echoline из локальной директории в рабочую директорию контейнера
COPY echoline.sh /app/echoline.sh

# Даем скрипту права на выполнение
RUN chmod +x /app/echoline.sh

# Запускаем скрипт с использованием переменных окружения
CMD ./echoline.sh -i $INTERVAL -m "$MESSAGE"
