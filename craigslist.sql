DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    user_name TEXT NOT NULL
);

INSERT INTO users
(user_name)
VALUES
('CucumberBoy'),
('RadioactiveMan'),
('HershallK'),
('GKWillie');

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL
);

INSERT INTO regions
(region)
VALUES
('New York Metro'),
('North Jersey'),
('South Jersey'),
('Central Jersey');

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    category TEXT NOT NULL
);

INSERT INTO categories
(category)
VALUES
('For Sale'),
('Housing Wanted'),
('Housing For Rent'),
('Free');

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    location TEXT NOT NULL,
    posted_by INTEGER REFERENCES users (id),
    category INTEGER REFERENCES categories (id),
    region INTEGER REFERENCES regions (id)
);

INSERT INTO posts
(title, description, location, posted_by, category, region)
VALUES
('Video Game Lot', '100 brand new Mario Cart Nintendo Wii', 'Iron Bound Newark NJ', 1, 1, 2),
('Studio Apartment', '$2000 Studio Red Hook', 'Red Hook Brooklyn', 2, 3, 1);


