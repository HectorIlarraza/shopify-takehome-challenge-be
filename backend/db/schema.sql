DROP DATABASE IF EXISTS inventory_dev;
CREATE DATABASE inventory_dev;

\C inventory_dev;

CREATE TABLE inventory (
    product_id SERIAL PRIMARY KEY,
    store_id SERIAL PRIMARY KEY,
    stock_available BOOLEAN DEFAULT true
);

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    serial_num SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price INTEGER,
    description TEXT NOT NULL,
    weight INTEGER,
    product_id INTEGER REFERENCES inventory (product_id) ON DELETE CASCADE
)

CREATE TABLE store (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    store_id INTEGER REFERENCES inventory (store_id) ON DELETE CASCADE
)