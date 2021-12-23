
-- name: create-sars-cov2-table
-- Create the table to hold pandemic data.
CREATE TABLE IF NOT EXISTS sars_cov2 (
    id SERIAL PRIMARY KEY,
    dt TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    
);

-- name: create-province-handles
CREATE TABLE IF NOT EXISTS province (
    id SERIAL PRIMARY KEY,
    province TEXT NOT NULL
);    

-- name: create-public-health-unit
CREATE TABLE IF NOT EXISTS public_health_unit (
    id SERIAL PRIMARY KEY,
    province_id INTEGER NOT NULL,
    unit_name TEXT NOT NULL,
    CONSTRAINT fk_govt FOREIGN KEY(province_id) REFERENCES province(id)
);

-- name: create-daily-tally
CREATE TABLE IF NOT EXISTS daily-dooms (
    id SERIAL PRIMARY KEY,
    phu INTEGER NOT NULL,
    dt TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    today NUMERIC NOT NULL,
    ttd NUMERIC NOT NULL
);
