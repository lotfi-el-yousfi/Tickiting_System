CREATE
DATABASE ticketing_system;

\c ticketing_system;


-- Users Table
CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE  NOT NULL,
    password VARCHAR(255)        NOT NULL,
    email    VARCHAR(100) UNIQUE NOT NULL,
    role     VARCHAR(20) DEFAULT 'user'
);

-- Tickets Table
CREATE TABLE tickets
(
    id          SERIAL PRIMARY KEY,
    title       VARCHAR(100) NOT NULL,
    description TEXT         NOT NULL,
    status      VARCHAR(20) DEFAULT 'open',
    created_at  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    user_id     INTEGER REFERENCES users (id)
);
