package com.luv2code.springdemo.dao;


import com.luv2code.springdemo.entities.Rzad_fotel;
import com.luv2code.springdemo.entities.Rzedy;

import java.util.List;

public interface RzedyDao {

    public List<Rzedy> getRzedy();




    public void saveRzedy(Rzedy theRzedy);
    public void updateRzedy(Rzedy theRzedy);

    public Rzedy getRzedy(int theId);

    public void deleteRzedy(int theId);
}
