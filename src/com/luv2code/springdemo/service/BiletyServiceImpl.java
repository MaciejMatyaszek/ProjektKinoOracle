package com.luv2code.springdemo.service;


import com.luv2code.springdemo.dao.BiletyDao;
import com.luv2code.springdemo.entities.Bilety;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class BiletyServiceImpl implements BiletyService {

    @Autowired
    BiletyDao biletyDao;

    @Override
    @Transactional
    public List<Bilety> getBilety() {
        return biletyDao.getBilety();
    }

    @Override
    @Transactional
    public void saveBilety(Bilety theBilety) {
        biletyDao.saveBilety(theBilety);
    }

    @Override
    @Transactional
    public void updateBilety(Bilety theBilety) {
        biletyDao.updateBilety(theBilety);
    }

    @Override
    @Transactional
    public Bilety getBiletyById(int theId) {
        return biletyDao.getBiletyById(theId);
    }

    @Override
    @Transactional
    public void deleteBilety(int theId) {
        biletyDao.deleteBilety(theId);

    }
}
