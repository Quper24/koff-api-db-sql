# API Магазина Мебели

## Введение

Это документация описывает API магазина мебели. Этот API предоставляет доступ к различным функциям, таким как управление товарами, категориями, корзиной и заказами, а также поддерживает параметры поиска. Для взаимодействия с API используются HTTP запросы.

## Аутентификация

Для выполнения некоторых операций, необходимо аутентифицироваться и передавать ключ доступа в заголовке `Authorization` в формате "Bearer `<access_key>`".

## Ресурсы

### Товары

#### Получить список товаров

- **URL:** `/api/products`
- **Метод:** GET
- **Описание:** Возвращает список всех товаров в магазине. Поддерживает следующие параметры поиска:
  - `page` (необязательный): Номер страницы (по умолчанию 1).
  - `limit` (необязательный): Количество товаров на странице (по умолчанию 12).
  - `list` (необязательный): Список ID товаров для получения.
  - `category` (необязательный): Фильтрация товаров по категории.
  - `q` или `search` (необязательный): Поиск товаров по имени.

#### Получить информацию о товаре по ID

- **URL:** `/api/products/:id`
- **Метод:** GET
- **Описание:** Возвращает информацию о товаре с указанным ID.

#### Добавить новый товар

недоступен без special accessKey

- **URL:** `/api/products`
- **Метод:** POST
- **Описание:** Добавляет новый товар в магазин. Для добавления товара необходимо отправить POST запрос с данными о товаре, включая имя, цену, категорию и изображения.

#### Удалить товар по ID

- **URL:** `/api/products/:id`
- **Метод:** DELETE
- **Описание:** Удаляет товар с указанным ID.

### Категории

#### Получить список категорий товаров

- **URL:** `/api/productCategories`
- **Метод:** GET
- **Описание:** Возвращает список всех категорий товаров.

### Корзина

#### Получить содержимое корзины

- **URL:** `/api/cart`
- **Метод:** GET
- **Описание:** Возвращает содержимое корзины текущего пользователя.

#### Добавить товар в корзину

- **URL:** `/api/cart/products`
- **Метод:** POST
- **Описание:** Добавляет товар в корзину текущего пользователя. Для добавления товара необходимо отправить POST запрос с данными о товаре, включая ID товара и количество.

#### Удалить товар из корзины по ID товара

- **URL:** `/api/cart/products/:id`
- **Метод:** DELETE
- **Описание:** Удаляет товар из корзины текущего пользователя по ID товара.

### Заказы

#### Создать заказ

- **URL:** `/api/orders`
- **Метод:** POST
- **Описание:** Создает новый заказ. Для создания заказа необходимо отправить POST запрос с данными о заказе.

#### Получить информацию о заказе по ID

- **URL:** `/api/orders/:id`
- **Метод:** POST
- **Описание:** Получает информацию о заказе с указанным ID.

Обязательно предоставьте ключ доступа для аутентификации в запросах к API.
