package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Rzedy;
import com.luv2code.springdemo.entities.Sala;

import java.util.List;

public interface SalaDao {

        public List<Sala> getSala();


        public void saveSala(Sala theSala);

        public Sala getSalaById(int id);
    public void updateSala(Sala theSala);
    public void deleteSala(int theId);
    }


