# Muzroom Pro — деплой на Render

## Быстрый старт
1) Создай аккаунт на https://render.com
2) Нажми **New → Blueprint** и загрузи файл `render.yaml` из этого архива.
3) Render попросит выбрать репозиторий: загрузить этот проект (папка `music-lesson-mvp-java`) в GitHub и указать его.
   Либо создай Web Service и укажи Dockerfile (находится в корне проекта).
4) Жди 2–4 минуты — получишь HTTPS‑ссылку вида `https://muzroom-pro.onrender.com`.

## Подключить домен muzroom.pro
- В Render: Settings → Custom Domains → Add → `muzroom.pro`
- В панели рег. домена добавь CNAME: `muzroom.pro` → `muzroom-pro.onrender.com`
- Подожди 5–30 минут. SSL появится автоматически (Let's Encrypt).

