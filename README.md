[![main workflow](https://github.com/qpxqp/foodgram/actions/workflows/main.yml/badge.svg)](https://github.com/qpxqp/foodgram/actions/workflows/main.yml)
---
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Django](https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white) ![DjangoREST](https://img.shields.io/badge/DJANGO-REST-ff1709?style=for-the-badge&logo=django&logoColor=white&color=ff1709&labelColor=gray) ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) ![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white) ![Gunicorn](https://img.shields.io/badge/gunicorn-%298729.svg?style=for-the-badge&logo=gunicorn&logoColor=white) ![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white) ![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

---
# Проект "Foodgram"

## Общее описание
"Foodgram" — это социальная платформа, ориентированная на кулинарию, которая позволяет пользователям делиться своими кулинарными творениями, обмениваться рецептами и получать вдохновение от других любителей еды. Это пространство для общения, обучения и творческого самовыражения для всех, кто интересуется приготовлением вкусной еды.

## Цели проекта
- **Объединение любителей кулинарии:** Создать сообщество, где люди могут находить единомышленников и делиться своими кулинарными успехами и неудачами.
- **Обмен рецептами и лайфхаками:** Дать возможность пользователям делиться и открывать новые рецепты, советы по приготовлению пищи и секреты кулинарного мастерства.
- **Поддержка ресторанного бизнеса:** Предоставить платформу для рестораторов, шеф-поваров и кулинарных экспертов, чтобы они могли продвигать свои заведения и делиться опытом.
- **Образование и вдохновение:** Участвовать в образовательных мероприятиях, мастер-классах и конкурсах, чтобы мотивировать пользователей развивать свои кулинарные навыки.

## Функции проекта
1. **Публикация контента:** Пользователи могут загружать фотографии своих блюд, описания рецептов и процесс приготовления. Можно также добавлять теги для облегчения поиска.
   
2. **Поиск и фильтрация:** Удобные инструменты поиска и фильтрации позволяют находить рецепты по времени приема блюд (завтрак, обед, ужин и т. д.) и другим критериям.

3. **Создание списков покупок:** Пользователи могут составлять списки необходимых ингредиентов для выбранных рецептов, что упрощает процесс приготовления.

4. **Социальные функции:** Возможность подписываться на других пользователей.

## Целевая аудитория
- **Любители готовки:** Люди, интересующиеся кулинарией на любительском уровне, ищущие вдохновение и рецепты.
- **Профессиональные повара:** Шеф-повара и рестораторы, желающие делиться своим опытом и продвигать свои заведения.
- **Кулинарные блогеры:** Создатели контента, которые хотят расширить свою аудиторию и делиться своими достижениями.
- **Здоровое питание:** Люди, интересующиеся здоровым образом жизни, ищущие рецепты и советы по правильному питанию.

## Заключение
"Foodgram" может стать ведущей платформой для любителей и профессионалов в области кулинарии, предлагая функционал, который удовлетворяет потребности пользователей, создает активное сообщество и поддерживает обмен знаниями и опытом. Это пространство для вдохновения и кулинарного творчества, где еда становится не только основным продуктом, но и искусством.

Проект разработан согласно микросервисной архитектуре на основе [Docker](https://www.docker.com/).

## Как развернуть проект

1. Установите [Docker Desktop](https://www.docker.com/products/docker-desktop/) согласно [инструкции](https://docs.docker.com/desktop/)

2. Клонируйте репозиторий [foodgram](https://github.com/qpxqp/foodgram) с помощью следующей команды:

```bash
git clone git@github.com:qpxqp/foodgram.git
```

3. В локальной директории проекта клонированного репозитория создаёте файл `.env` и заполнить его по аналогии с файлом `.env.example`.

4. В локальной директории проекта клонированного репозитория запустите стек приложений с помощью команды:

```bash
docker compose -f docker-compose.production.yml up -d
```

5. Соберите статические данные и примените миграции с помощью команд:

```bash
docker compose -f docker-compose.production.yml exec backend python manage.py collectstatic
```
```bash
docker compose -f docker-compose.production.yml exec backend cp -r /app/collect_static/. /backend_static/static/
```
```bash
docker compose -f docker-compose.production.yml exec backend python manage.py migrate
```

6. Загрузите в базу данных начальный набор ингредиентов и тегов с помощью команды:
```bash
docker compose -f docker-compose.production.yml exec backend python manage.py db -l
```

7. Вы можете открыть приложение в браузере по адресу [http://localhost:8008](http://localhost:8008) и увидеть его работающим.

- Используйте `docker ps` для вывода списка контейнеров.

- Используйте `docker compose -f docker-compose.production.yml down -v` для остановки стека приложений, удаления контейнеров и volumes.

---

Проект "Foodgram": [Foodgram](https://foodgram.diapsid.ru)

Документация: [ReDoc](https://foodgram.diapsid.ru/api/docs/)

Автор проекта: [AlexD](https://github.com/qpxqp)