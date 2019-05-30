package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Bilety;

import java.util.List;

public interface BiletyService {
    public List<Bilety> getBilety();

    public void saveBilety(Bilety theBilety);
    public void updateBilety(Bilety theBilety);

    public Bilety getBiletyById(int theId);

    public void deleteBilety(int theId);
}
