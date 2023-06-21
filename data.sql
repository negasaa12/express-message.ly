DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS messages;

CREATE TABLE users (
    username text PRIMARY KEY,
    password text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    phone text NOT NULL,
    join_at timestamp without time zone NOT NULL,
    last_login_at timestamp with time zone
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_username text NOT NULL REFERENCES users,
    to_username text NOT NULL REFERENCES users,
    body text NOT NULL,
    sent_at timestamp with time zone NOT NULL,
    read_at timestamp with time zone
);


INSERT INTO users (username, password, first_name, last_name, phone, join_at, last_login_at)
VALUES
  ('janedoe', 'p@ssw0rd456', 'Jane', 'Doe', '9876543210', '2023-06-20 14:00:00', '2023-06-20 15:30:00'),
  ('mikesmith', 'securepass', 'Mike', 'Smith', '5551234567', '2023-06-19 18:30:00', '2023-06-20 09:15:00'),
  ('sarahjones', 'password789', 'Sarah', 'Jones', '1112223333', '2023-06-18 11:45:00', '2023-06-19 16:45:00'),
  ('davidwilson', 'strongpass123', 'David', 'Wilson', '4445556666', '2023-06-17 09:00:00', NULL);
