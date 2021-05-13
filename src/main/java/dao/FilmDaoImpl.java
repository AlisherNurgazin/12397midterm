package dao;

import ConfigDB.ConnProvider;
import entity.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FilmDaoImpl implements FilmDao{
    static Connection conn;
    static PreparedStatement pst;
    @Override
    public List<Film> getFilms() {
        List<Film> films = new ArrayList<>();
        try {
            conn = ConnProvider.getConn();
            pst = conn.prepareStatement("SELECT * FROM films ");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Film film = new Film();
                film.setFilmID(rs.getInt(1));
                film.setFilmName(rs.getString(2));
                film.setDuration(rs.getInt(3));
                film.setGenre(rs.getString(4));
                film.setPegi(rs.getString(5));
                film.setDescription(rs.getString(6));
                film.setTrailer(rs.getString(7));
                films.add(film);
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return films;
    }

    @Override
    public void insertAFilm(Film film) {

    }
}
