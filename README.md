## Требования

Перед началом работы убедитесь, что у вас установлены следующие зависимости:

- [Python 3](https://www.python.org/downloads/)
- [Passlib](https://passlib.readthedocs.io/en/stable/) (установите с помощью pip install passlib)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Docker](https://docs.docker.com/get-docker/)

## Установка и запуск

1. **Запустите Docker Compose**:
docker compose up -d


2. **Запустите Ansible Playbook**:
ansible-playbook -i ansible/hosts ansible/playbook

3. **Подключитесь к контейнеру через SSH**:
ssh user1@localhost -p 2222
   

## Доступ к ресурсам

После выполнения вышеуказанных шагов, вы сможете получить доступ к следующим URL:

- **Основной URL для изображений**: [http://ip/images/](http://ip/images/)
- **URL конкретного изображения**: [http://ip/images/152501.svg](http://ip/images/152501.svg)

Замените ip на ваш фактический IP-адрес.