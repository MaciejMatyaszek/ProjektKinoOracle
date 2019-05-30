package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Film;

import java.util.List;

public interface FilmService {
    public List<Film> getFilm();


    public List<Film> getFilmBySeansID(int id_seansu);

    public void saveFilm(Film theFilm);
    public void updateFilm(Film theFilm);

    public Film getFilmById(int theId);
    public List<Film> getFilmBySeansData();
    public List<Film> getFilmByName(String tytul);
    public void deleteFilm(int theId);
    public List<Film> FilmDay(int a);
    public List<Film> FilmDay2(int a);
}
