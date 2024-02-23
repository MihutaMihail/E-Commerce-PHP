CREATE TABLE IF NOT EXISTS account (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    emailVerified TINYINT NOT NULL DEFAULT 0,
    password VARCHAR(255) NOT NULL,
    admin TINYINT NOT NULL DEFAULT 0,
    token VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2),
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES account(id)
);

CREATE TABLE IF NOT EXISTS cart (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_price INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES account(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);