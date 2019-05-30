package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entities.Bilety;
import com.luv2code.springdemo.entities.Fotele;

import java.util.List;

public interface FoteleDao {
    public List<Fotele> getFotele();

    public void saveFotele(Fotele theFotele);
    public void updateFotele(Fotele theFotele);

    public Fotele getFoteleById(int theId);

    public void deleteFotele(int theId);
}
