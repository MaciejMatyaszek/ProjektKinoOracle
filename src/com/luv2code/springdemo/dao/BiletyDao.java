package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Film;

import java.util.List;

public interface BiletyDao {
    public List<Bilety> getBilety();

    public void saveBilety(Bilety theBilety);
    public void updateBilety(Bilety theBilety);

    public Bilety getBiletyById(int theId);

    public void deleteBilety(int theId);
}
