CREATE TABLE IF NOT EXISTS accounts (
    user_id serial PRIMARY KEY,
    username varchar(50) NOT NULL UNIQUE,
    password varchar(50) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    phone_num varchar(255) NOT NULL UNIQUE,
    rolenum integer NOT NULL
);