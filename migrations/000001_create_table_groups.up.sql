CREATE TABLE IF NOT EXISTS "groups"
(
    id           uuid      DEFAULT gen_random_uuid() PRIMARY KEY,
    name         varchar(255) UNIQUE NOT NULL,
    created_at   timestamp DEFAULT NOW(),
    updated_at   timestamp DEFAULT NULL,
    deleted_at   timestamp DEFAULT NULL
);