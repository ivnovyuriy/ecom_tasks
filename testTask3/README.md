# ecom-Task3

Задача:

3. Написать ansible-роль для развёртывания контейнера echoline из п.2
3.1. Роль должна удовлетворять проверке через yamllint
3.2. Роль должна предполагать, что имидж контейнера echoline доступен
3.3. Роль должна позволять задать произвольные параметры для секунд и сообщения, которые модифицируют поведение контейнера echoline.

**Инструкции по использованию:**

- Запуск плейбука Ansible:
```
ansible-playbook -i ~/inventory deploy_echoline.yml -vvv
```
![output1](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask3/img/output1.png?raw=true)

- Проверка запуска  контейнера:
```
docker ps 
```
![output2](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask3/img/output2.png?raw=true)

- Вывод логов из контейнера:
```
docker logs echoline 
```
![output3](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask3/img/output3.png?raw=true)

***Для завершения работы скрипта введите команду в терминале:***

- Остановить наш контейнер:
```
docker stop echoline 
```
![output4](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask3/img/output4.png?raw=true)

***Для изменения параметров необходимо:***

Изменить в нашем плейбуке deploy_echoline.yml значения параметров

    echoline_interval: "1"
    echoline_message: "ON AIR"

Затем можно снова запустить наш плейбук командой:
```
ansible-playbook -i ~/inventory deploy_echoline.yml -vvv
```

- Проверить вывод логов из контейнера (Долдны измениться интервал и сообщение):
```
docker logs echoline 
```