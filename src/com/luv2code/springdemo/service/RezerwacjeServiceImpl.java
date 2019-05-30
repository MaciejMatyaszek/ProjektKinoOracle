package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.RezerwacjeDao;
import com.luv2code.springdemo.dao.SeansDao;
import com.luv2code.springdemo.entities.Rezerwacje;
import com.luv2code.springdemo.entities.Seans;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class RezerwacjeServiceImpl implements RezerwacjeService {
    //wstrzykniecie seansDao
    @Autowired
    private RezerwacjeDao rezerwacjeDao;


    @Override
    @Transactional
    public List<Rezerwacje> getRezerwacje() {
        return  rezerwacjeDao.getRezerwacje();
    }

    @Override
    @Transactional
    public void saveRezerwacje(Rezerwacje theRezerwacje) {
        rezerwacjeDao.saveRezerwacje(theRezerwacje);
    }

    @Override
    @Transactional
    public void updateRezerwacje(Rezerwacje theRezerwacje) {
        rezerwacjeDao.updateRezerwacje(theRezerwacje);

    }

    @Override
    @Transactional
    public Rezerwacje getRezerwacjeById(int theId){

        return rezerwacjeDao.getRezerwacjeById(theId);
    }

    @Override
    @Transactional
    public void deleteRezerwacje(int theId) {
        rezerwacjeDao.deleteRezerwacje(theId);
    }
}
