CREATE TABLE IF NOT EXISTS "users"
(
    id           uuid      DEFAULT gen_random_uuid() PRIMARY KEY,
    group_id     uuid      DEFAULT NULL,
    name         varchar(255) UNIQUE NOT NULL,
    api_key_hash varchar(255) UNIQUE NOT NULL,
    created_at   timestamp DEFAULT NOW(),
    updated_at   timestamp DEFAULT NULL,
    deleted_at   timestamp DEFAULT NULL,

    FOREIGN KEY (group_id) REFERENCES "groups" (id)
);