package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.SalaDao;
import com.luv2code.springdemo.dao.SeansDao;
import com.luv2code.springdemo.entities.Sala;
import com.luv2code.springdemo.entities.Seans;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SalaServiceImpl implements SalaService{
    @Autowired
    private SalaDao salaDao;


    @Override
    @Transactional
    public List<Sala> getSala() {
        return salaDao.getSala();
    }

    @Override
    @Transactional
    public void saveSala(Sala theSala) {
        salaDao.saveSala(theSala);
    }

    @Override
    @Transactional
    public Sala getSalaById(int id) {
        return salaDao.getSalaById(id);

    }

    @Override
    @Transactional
    public void updateSala(Sala theSala) {
        salaDao.updateSala(theSala);
    }

    @Override
    @Transactional
    public void deleteSala(int theId) {
        salaDao.deleteSala(theId);
    }


}
