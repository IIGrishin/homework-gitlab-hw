Задание 1. Установка RabbitMQ
Используя Vagrant или VirtualBox, создайте виртуальную машину и установите RabbitMQ. Добавьте management plug-in и зайдите в веб-интерфейс.

Решение тут - https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Rabbit%20install.jpg

Задание 2. Отправка и получение сообщений
Используя приложенные скрипты, проведите тестовую отправку и получение сообщения. Для отправки сообщений необходимо запустить скрипт producer.py.

Для работы скриптов вам необходимо установить Python версии 3 и библиотеку Pika. Также в скриптах нужно указать IP-адрес машины, на которой запущен RabbitMQ, заменив localhost на нужный IP.

$ pip install pika
Зайдите в веб-интерфейс, найдите очередь под названием hello и сделайте скриншот. После чего запустите второй скрипт consumer.py и сделайте скриншот результата выполнения скрипта

В качестве решения домашнего задания приложите оба скриншота, сделанных на этапе выполнения.

Решение тут:
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Rabbit%20produ1.jpg
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Rabbit%20produ2.jpg
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Rabbit%20cons1.JPG
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Rabbit%20cons2.JPG

Задание 3. Подготовка HA кластера
Используя Vagrant или VirtualBox, создайте вторую виртуальную машину и установите RabbitMQ. Добавьте в файл hosts название и IP-адрес каждой машины, чтобы машины могли видеть друг друга по имени.

В качестве решения домашнего задания приложите скриншоты из веб-интерфейса с информацией о доступных нодах в кластере и включённой политикой.

Решение тут:
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/CLuster.JPG
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cluster%20%2B%20policy.JPG

Также приложите вывод команды с двух нод:

$ rabbitmqctl cluster_status

Решение тут:
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cluster1.JPG
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cluster2.JPG

Для закрепления материала снова запустите скрипт producer.py и приложите скриншот выполнения команды на каждой из нод:

Решение тут:
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cluster%20pro1.JPG
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cluster%20pro2.JPG


После чего попробуйте отключить одну из нод, желательно ту, к которой подключались из скрипта, затем поправьте параметры подключения в скрипте consumer.py на вторую ноду и запустите его.

Приложите скриншот результата работы второго скрипта.
Решение тут:
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/min%20master.JPG
* https://github.com/IIGrishin/homework-gitlab-hw/blob/main/img/rabbitmq/Cons%20fin.JPG
