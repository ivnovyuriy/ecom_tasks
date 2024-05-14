# ecom-Task2

Задача:

2. Написать Dockerfile для контейнера echoline
 2.1. Контейнер должен запускать shell-скрипт echoline из п.1
 2.2. Контейнер должен содержать переменные окружения для секунд и сообщения скрипта echoline
 2.3. Докерфайл должен поддерживать параметризацию значний скрипта по умолчанию для скрипта echoline (для секунд - "1", для сообщения - "ON AIR")
 2.4. Параметризация сборки должна производиться без правки докерфайла


**Инструкции по использованию:**

- Сборка образа Docker:
```
docker build --build-arg INTERVAL=10 --build-arg MESSAGE="Custom Message" -t echoline .
```
![output1](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask2/img/output1.png?raw=true)

- Запуск Docker контейнера:
```
docker run echoline 
```
![output2](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask2/img/output2.png?raw=true)

***Для завершения работы скрипта необходимо открыть новое окно терминала:***

- Показать список запущенных контейнеров:
```
docker ps
```

- Остановить наш контейнер:
```
docker stop 9bed0efdb2fe 
```
![output3](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask2/img/output3.png?raw=true)