# belogrud_infra
belogrud Infra repository

# 20181023
# Lesson 05
# 
Домашнее задание к уроку 05: "Знакомство с облачной инфраструктурой и облачными сервисами.".

Оформление комментария согласно рекомендациям из "Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf", стр.35.

Работа выполнялась по методичке “Практика._Знакомство_с_облачнои__инфраструктурои-20271-2d4f89.pdf”.

# Что сделано.
#
*. В GCP созданы виртуальные машины bastion (есть внутренний и внешний ip), someinternalhost (есть только внутренний ip). Дополнительно создана виртуальная машина admingate (есть внутренний и внешний ip). Хост admingate будет использоваться для подключения к хостам bastion, someinternalhost. Из локальной сети, к сожалению, весь ssh трафик в Интернет блокируется.
*. Сгенерированы ssh ключи. Файлы ключей размещены на хосте admingate. На хостах bastion, someinternalhost только авторизация по открытой части ключа.
*. Для возможности доступа к хостам bastion, someinternalhost по их именам, в файл /etc/hosts внесены соответствующие записи.
На сервере bastion.
root@bastion:~# tail -n 3 /etc/hosts

# It's local preset to more easy connect to host.
10.156.0.3 someinternalhost
root@bastion:~#

На сервере admingate
[root@admingate ~]# tail -n 3 /etc/hosts

# To connect to bastion host via it's name.
35.234.125.254 bastion
[root@admingate ~]#

*. Для решения домашнего задания использована команда в одну строку для подключения к хосту someinternalhost через хост bastion.
[belogrud@admingate ~]$ ssh -t -A belogrud@bastion "( ssh belogrud@someinternalhost )"
*. Установлен, настроен pritunl.
bastion_IP = 35.234.125.254
someinternalhost_IP = 10.156.0.3
*. В ветку репозитория cloud-bastion помещены файлы setupvpn.sh, cloud-bastion.ovpn.

# Как проверить.
#
*. Используя имеющиеся вводные данные и руководствуясь своим опытом.

# Замечания.
#
*. Нет уверенности, что именно это и требовалось по домашнему заданию.
*. Так же не понятно, что нужно для решения “Доп. задание”. Про какие alias’ы речь - про те, что в bash или это про записи в /etc/hosts?
*. На странице 32 методички, перед командой ssh-add -L, нужно было бы использовать ssh-agent /bin/bash или, как это указано здесь:
https://cloud.google.com/compute/docs/instances/connecting-advanced#thirdpartytools
eval ssh-agent $SHELL
Этого момента я не понял - об этом забыли или что...

