package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Seans;

import java.util.List;

public interface SeansDao {

    public List<Seans> getSeans();


    public void saveSeans(Seans theSeans);
    public void updateSeans(Seans theSeans);

    public Seans getSeansById(int theId);
    public List<Seans> getSeansByData();
    public void deleteSeans(int theId);
    public List<Seans> test();
    public List<Seans> SeansDAY(int a);

    public List<Seans> SeansDAY2(int a);
}
