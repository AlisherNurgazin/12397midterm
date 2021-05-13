package dao;

import entity.Account;
import entity.Film;

import java.util.List;

public interface FilmDao {
    public List<Film> getFilms();
    public void insertAFilm(Film film);
}
