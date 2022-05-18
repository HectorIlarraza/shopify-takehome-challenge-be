DROP DATABASE IF EXISTS inventory_dev;
CREATE DATABASE inventory_dev;

\c inventory_dev;

CREATE TABLE inventory (
    product_id SERIAL PRIMARY KEY,
    store_id INTEGER UNIQUE NOT NULL,
    stock_available BOOLEAN
);

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    serial_num VARCHAR NOT NULL,
    name TEXT NOT NULL,
    price INTEGER,
    description TEXT NOT NULL,
    weight INTEGER,
    product_id INTEGER REFERENCES inventory (product_id) ON DELETE CASCADE
);

CREATE TABLE store (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    store_id INTEGER REFERENCES inventory (store_id) ON DELETE CASCADE
);