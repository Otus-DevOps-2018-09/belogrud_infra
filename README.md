# belogrud_infra
# belogrud Infra repository


# 20181212
# Lesson 12
#
# Домашнее задание к уроку 12: "Принципы организации кода для управления конфигурацией".
# Работа выполнялась по методичке “Ansible03___Роли_и_окружения___ДЗ-20271-85bd99.pdf”.
# 
# Что сделано.
#
# *. Средствами ansible-galaxy init созданы структуры каталогов и файлов для ролей app и db.
# *. Внесены данные в файлы обоих ролей.
# *. Проведён запуск виртуальных машин с помощью terraform. Проверено подключение к приложению.
#


# 20181122
# Lesson 11
#
# Домашнее задание к уроку 11: "Продолжение знакомства с Ansible: templates, handlers, dynamic inventory, vault, tags".
# Работа выполнялась по методичке “Практика._Расширенные_возможности_Ansible-22859-ecf178.pdf”.
# 
# Что сделано.
#
# *. Созданы группы файлов плейбуков ansible.
#


# 20181120
# Lesson 10
#
# Домашнее задание к уроку 10: "Управление конфигурацией".
# Работа выполнялась по методичке “Ansible01_HW-20271-8b1a2e.pdf”.
# 
# Что сделано.
#
# *. Созданы файлы конфигурации ansible.
# *. Созданы yml-сценарии.
#


# 20181114
# Lesson 09
#
# Домашнее задание к уроку 09: "Принципы организации инфраструктурного кода и работа над инфраструктурой в команде на примере Terraform".
#
# Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.
# 
# Работа выполнялась по методичке “Практика._Terraform_ресурсы__модули__окружения_и_работа_в_команде_9689_ed20d9-24362-ed20d9.pdf”.
# 
# Что сделано.
#
# *. Создана секция ресурса в файле main.tf, описывающая создания правила firewall для доступа по ssh к хостам.
# *. Протестировано параллельное создание ресурсов при выполнении команды terraform apply.
# *. Целая куча разного понаделано. Длиннющая домашняя работа.
#
# Как проверить.
#
#
# Замечания.
#


# 20181113
# Lesson 08
#
# Домашнее задание к уроку 08: "Практика Infrastructure as a Code (IaC)".
#
# Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.
# 
# Работа выполнялась по методичке “Практика._Практика_IaС._Знакомство_с_Terraform-8278-b36f9d.pdf”.
# 
# Что сделано.
#
# *. Созданы файлы terraform для описания инсталляции.
# *. Переменные почему-то не заработали.
# 
# Как проверить.
#
#
# Замечания.
#


# 20181112
# Lesson 07
#
# Домашнее задание к уроку 07: "Модели управления инфраструктурой.".
#
# Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.
# 
# Работа выполнялась по методичке “Практика._Сборка_образа_VM_при_помощи_Packer-24362-87e33e.pdf”.
# 
# Что сделано.
#
# *. Создан конфигурационный файл для packer. В нём заменены параметры на актуальные для этого локального проекта.
# *. Отлажены файлы скриптов, которые используются в packer.
# *. Создан образ виртуальной машины с помощью packer.
# *. Созданный образ успешно использован для создания виртуальной машины.
# 
# *. К сожалению тесты Travis CI не проходят успешно. Поэтому создал файлы variables.json и variables.json.example.
# 
# Как проверить.
#
#
# Замечания.
#


# 20181109
# Lesson 06
#
# Домашнее задание к уроку 06: "Основные сервисы Google Cloud Platform (GCP).".
#
# Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.
# 
# Работа выполнялась по методичке “Практика._Деплой_тестового_приложения-3481-663447.pdf”.
# 
# Что сделано.
#
testapp_IP = 35.204.151.12
testapp_port = 9292
# *. На выделенном хосте linux установлен и проинициализирован пакет Google Cloud SDK.
# *. В GCP создана виртуальная машина с помощью команды CGP SDK.
# *. На созданной виртуальной машине установлены пакеты программ и запущено приложение.
# *. Последовательность установки пакетов программ заскриптована тремя bash скриптами.


# 20181023
# Lesson 05
# 
# Домашнее задание к уроку 05: "Знакомство с облачной инфраструктурой и облачными сервисами.".
# 
# Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.
# 
# Работа выполнялась по методичке “Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf”.
# 
# Что сделано.
#
# *. В GCP созданы виртуальные машины bastion (есть внутренний и внешний ip), someinternalhost (есть только внутренний ip). Дополнительно создана виртуальная машина admingate (есть внутренний и внешний ip). Хост admingate будет использоваться для подключения к хостам bastion, someinternalhost. Из локальной сети, к сожалению, весь ssh трафик в Интернет блокируется.
# *. Сгенерированы ssh ключи. Файлы ключей размещены на хосте admingate. На хостах bastion, someinternalhost только авторизация по открытой части ключа.
# *. Для возможности доступа к хостам bastion, someinternalhost по их именам, в файл /etc/hosts внесены соответствующие записи.
# На сервере bastion.
# root@bastion:~# tail -n 3 /etc/hosts
# 
# It's local preset to more easy connect to host.
# 10.156.0.3 someinternalhost
# root@bastion:~#
# 
# На сервере admingate
# [root@admingate ~]# tail -n 3 /etc/hosts
# 
# To connect to bastion host via it's name.
# 35.234.125.254 bastion
# [root@admingate ~]#
# 
# *. Для решения домашнего задания использована команда в одну строку для подключения к хосту someinternalhost через хост bastion.
# [belogrud@admingate ~]$ ssh -t -A belogrud@bastion "( ssh belogrud@someinternalhost )"
# *. Установлен, настроен pritunl.
bastion_IP = 35.234.125.254
someinternalhost_IP = 10.156.0.3
# 
# *. В ветку репозитория cloud-bastion помещены файлы setupvpn.sh, cloud-bastion.ovpn.
# 
# Как проверить.
#
# *. Используя имеющиеся вводные данные и руководствуясь своим опытом.
#
# Замечания.
#
# *. Нет уверенности, что именно это и требовалось по домашнему заданию.
# *. Так же не понятно, что нужно для решения “Доп. задание”. Про какие alias’ы речь - про те, что в bash или это про записи в /etc/hosts?
# *. На странице 32 методички, перед командой ssh-add -L, нужно было бы использовать ssh-agent /bin/bash или, как это указано здесь:
# https://cloud.google.com/compute/docs/instances/connecting-advanced#thirdpartytools
# eval ssh-agent $SHELL
# Этого момента я не понял - об этом забыли или что...

