package com.luv2code.springdemo.service;


import com.luv2code.springdemo.dao.FoteleDao;
import com.luv2code.springdemo.entities.Fotele;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class FotelServiceImpl implements FoteleService{

    @Autowired
    FoteleDao foteleDao;

    @Override
    @Transactional
    public List<Fotele> getFotele() {
        return foteleDao.getFotele();
    }

    @Override
    @Transactional
    public void saveFotele(Fotele theFotele) {
        foteleDao.saveFotele(theFotele);
    }

    @Override
    @Transactional
    public void updateFotele(Fotele theFotele) {
            foteleDao.updateFotele(theFotele);
    }

    @Override
    @Transactional
    public Fotele getFoteleById(int theId) {
        return foteleDao.getFoteleById(theId);
    }

    @Override
    @Transactional
    public void deleteFotele(int theId) {

        foteleDao.deleteFotele(theId);
    }
}
