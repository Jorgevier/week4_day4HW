CREATE TABLE car (
    car_id serial primary key,
    make VARCHAR(50),
    year INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE customer(
    customer_id serial primary key,
    name VARCHAR(50),
    address VARCHAR(50)
)
CREATE TABLE invoice(
    invoice_id serial primary key,
    salesperson_id INTEGER,
    car_id INTEGER,
    price NUMERIC,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)
CREATE TABLE salesperson(
    salesperson_id serial primary key,
    name VARCHAR(50)
)
CREATE TABLE service(
    ticket_id serial primary key,
    car_id INTEGER,
    date TIMESTAMP,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)
CREATE TABLE mechanic(
    mechanic_id serial primary key,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES service(ticket_id)
)