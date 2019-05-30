package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Miejsca;

import java.util.List;

public interface MiejscaService {
    public List<Miejsca> getMiejsca();

    public void saveMiejsca(Miejsca theMiejsca);
    public void updateMiejsca(Miejsca theMiejsca);

    public Miejsca getMiejscaById(int theId);

    public void deleteMiejsca(int theId);
    public List<Miejsca> getMiejscaByIdSeansu(int theId);
}
