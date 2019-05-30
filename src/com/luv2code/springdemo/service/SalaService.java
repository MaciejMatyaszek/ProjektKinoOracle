package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Sala;

import java.util.List;

public interface SalaService {
    public List<Sala> getSala();
    public void saveSala (Sala theSala);
    public Sala getSalaById(int id);
    public void updateSala(Sala theSala);
    public void deleteSala(int theId);
}
