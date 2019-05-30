package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Film;
import com.luv2code.springdemo.entities.Rezerwacje;

import java.util.List;

public interface RezerwacjeDao {





    public List<Rezerwacje> getRezerwacje();

    public void saveRezerwacje(Rezerwacje theRezerwacje);
    public void updateRezerwacje(Rezerwacje theRezerwacje);

    public Rezerwacje getRezerwacjeById(int theId);

    public void deleteRezerwacje(int theId);
}
