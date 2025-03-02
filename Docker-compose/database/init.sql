-- Create the database if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'resume_db') THEN
        CREATE DATABASE resume_db;
    END IF;
END $$;

-- Connect to the database
\c resume_db;

-- Explicitly set character encoding and schema if needed
SET client_encoding = 'UTF8';

-- Create the likes table if it doesn't exist
CREATE TABLE IF NOT EXISTS likes (
    id SERIAL PRIMARY KEY
);

-- Create the comments table if it doesn't exist
CREATE TABLE IF NOT EXISTS comments (
    id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);