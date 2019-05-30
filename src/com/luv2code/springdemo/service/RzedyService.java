package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Rzedy;

import java.util.List;

public interface RzedyService {
    public List<Rzedy> getRzedy();

    public void saveRzedy(Rzedy theRzedy);

    public void updateRzedy(Rzedy theRzedy);

    public Rzedy getRzedy(int theId);

    public void deleteRzedy(int theId);
}
