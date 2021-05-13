CREATE TABLE IF NOT EXISTS films (
                                        film_id serial PRIMARY KEY,
                                        film_name varchar(50) NOT NULL,
                                        duration_min integer NOT NULL,
                                        genre varchar(255) NOT NULL,
                                        pegi varchar(30) NOT NULL,
                                        film_description text NOT NULL,
                                        film_trailer text NOT NULL
);