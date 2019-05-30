package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Rezerwacje;
import com.luv2code.springdemo.entities.Rzad_fotel;

import java.util.List;

public interface Rzad_fotelDao {

    public List<Rzad_fotel> getRzad_fotel();




    public void saveRzad_fotel(Rzad_fotel theRzad_fotel);
    public void updateRzad_fotel(Rzad_fotel theRzad_fotel);

    public Rzad_fotel getRzad_fotelById(int theId);

    public void deleteRzad_fotel(int theId);
}
