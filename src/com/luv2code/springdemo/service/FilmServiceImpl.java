package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.FilmDao;
import com.luv2code.springdemo.entities.Film;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class FilmServiceImpl implements FilmService{

    @Autowired
    FilmDao filmDao;

    @Override
    @Transactional
    public List<Film> getFilm() {
        return filmDao.getFilm();
    }

    @Override
    @Transactional
    public List<Film> getFilmBySeansID(int id_seansu) {
        return filmDao.getFilmBySeansID(id_seansu);
    }

    @Override
    @Transactional
    public void saveFilm(Film theFilm) {
        filmDao.saveFilm(theFilm);
    }

    @Override
    @Transactional
    public void updateFilm(Film theFilm) {
        filmDao.updateFilm(theFilm);
    }

    @Override
    @Transactional
    public Film getFilmById(int theId) {
        return filmDao.getFilmById(theId);
    }

    @Override
    @Transactional
    public List<Film> getFilmBySeansData() {
        return filmDao.getFilmBySeansData();
    }

    @Override
    @Transactional
    public List<Film> getFilmByName(String tytul) {
        return filmDao.getFilmByName(tytul);
    }

    @Override
    @Transactional
    public void deleteFilm(int theId) {
        filmDao.deleteFilm(theId);
    }

    @Override
    @Transactional
    public List<Film> FilmDay(int a) {
        return filmDao.FilmDay(a);
    }

    @Override
    @Transactional
    public List<Film> FilmDay2(int a) {
        return filmDao.FilmDay2(a);
    }
}
