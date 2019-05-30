package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Miejsca;

import java.util.List;

public interface MiejscaDao {
    public List<Miejsca> getMiejsca();

    public void saveMiejsca(Miejsca theMiejsca);
    public void updateMiejsca(Miejsca theMiejsca);

    public Miejsca getMiejscaById(int theId);
    public List<Miejsca> getMiejscaByIdSeansu(int theId);
    public void deleteMiejsca(int theId);
}
