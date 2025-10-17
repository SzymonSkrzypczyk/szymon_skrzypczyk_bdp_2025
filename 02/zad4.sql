CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(POLYGON)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(LINESTRING)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geometry GEOMETRY(POINT)
);
