package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.BiletyDao;
import com.luv2code.springdemo.dao.Dane_osoboweDao;
import com.luv2code.springdemo.entities.Dane_osobowe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class Dane_osboweServiceImpl implements Dane_osoboweService {

    @Autowired
    Dane_osoboweDao dane_osoboweDao;
    @Override
    @Transactional
    public List<Dane_osobowe> getDane_osobowe() {
        return dane_osoboweDao.getDane_osobowe();
    }

    @Override
    @Transactional
    public void saveDane_osobowe(Dane_osobowe theDane_osobowe) {
        dane_osoboweDao.saveDane_osobowe(theDane_osobowe);
    }

    @Override
    @Transactional
    public void updateDane_osobowe(Dane_osobowe theDane_osobowe) {
        dane_osoboweDao.updateDane_osobowe(theDane_osobowe);
    }

    @Override
    @Transactional
    public Dane_osobowe getDane_osoboweById(int theId) {
        return dane_osoboweDao.getDane_osoboweById(theId);
    }

    @Override
    @Transactional
    public void deleteDane_osobowe(int theId) {
        dane_osoboweDao.deleteDane_osobowe(theId);
    }
}
