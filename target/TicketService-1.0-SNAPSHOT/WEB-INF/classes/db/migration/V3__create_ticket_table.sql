CREATE TABLE IF NOT EXISTS tickets (
                                     ticket_id serial PRIMARY KEY,
                                     user_id integer,
                                     film_id integer,
                                     CONSTRAINT fk_user
                                         FOREIGN KEY(user_id)
                                             REFERENCES accounts(user_id),
                                     CONSTRAINT fk_film
                                         FOREIGN KEY(film_id)
                                             REFERENCES films(film_id)
);