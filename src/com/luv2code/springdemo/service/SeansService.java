package com.luv2code.springdemo.service;

import com.luv2code.springdemo.entities.Seans;

import java.util.List;

public interface SeansService {

    public List<Seans> getSeans();
    public void saveSeans (Seans theSeans);
    public void updateSeans (Seans theSeans);
    public Seans getSeansbyId(int theId);

    public void deleteSeans(int theId);
    public List<Seans> getSeansByData();
    public List<Seans> test();
    public List<Seans> SeansDAY(int a);
    public List<Seans> SeansDAY2(int a);
}






