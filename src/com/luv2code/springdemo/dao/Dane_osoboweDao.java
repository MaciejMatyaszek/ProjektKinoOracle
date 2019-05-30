package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Dane_osobowe;

import java.util.List;

public interface Dane_osoboweDao {
    public List<Dane_osobowe> getDane_osobowe();

    public void saveDane_osobowe(Dane_osobowe theDane_osobowe);
    public void updateDane_osobowe(Dane_osobowe theDane_osobowe);

    public Dane_osobowe getDane_osoboweById(int theId);

    public void deleteDane_osobowe(int theId);
}
