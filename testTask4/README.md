# ecom-Task4

Задача:

4. Написать ansible-плейбук для развёртывания роли echoline из п.3
4.1. Плейбук должен устанавливать докер-демон из репозитория ОС
4.2. Для простоты, пусть плейбук копирует Dockerfile контейнера echoline и собирает его прямо на хосте. Эту операцию допускается произвести при помощи модуля ansible.builtin.shell
4.3. Конфигурация параметров роли echoline должна быть задана через групповые переменные.


**Инструкции по использованию:**

- Запуск плейбука Ansible:
```
ansible-playbook -i ~/inventory deploy_echoline.yml
```
![output1](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask4/img/output1.png?raw=true)

- Вывод логов из контейнера:
```
docker logs echoline 
```
![output2](https://github.com/ivnovyuriy/ecom_tasks/blob/master/testTask4/img/output2.png?raw=true)

***Для завершения работы скрипта введите команду в терминале:***

- Остановить наш контейнер:
```
docker stop echoline 
```