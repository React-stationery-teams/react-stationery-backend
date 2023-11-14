-- Category Table
CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Product Table
CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    product_id VARCHAR(100) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    category_id INTEGER REFERENCES Category(id),
    weight FLOAT, 
    mainPhoto TEXT
);

-- Photos Table
CREATE TABLE Photos (
    id SERIAL PRIMARY KEY,
    product_id VARCHAR(100) REFERENCES Product(product_id),
    photo_urls TEXT[] NOT NULL
);

-- Cart Table
CREATE TABLE Cart (
    id SERIAL PRIMARY KEY,
    product_id VARCHAR(100) REFERENCES Product(product_id),
    amount INTEGER NOT NULL
);

-- Favorites Table
CREATE TABLE Favorites (
    id SERIAL PRIMARY KEY,
    product_id VARCHAR(100) REFERENCES Product(product_id)
);
