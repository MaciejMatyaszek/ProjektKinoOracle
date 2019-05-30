package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.Rzad_fotelDao;
import com.luv2code.springdemo.entities.Rzad_fotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class Rzad_fotelServiceImpl implements Rzad_fotelService {
    @Autowired
    Rzad_fotelDao rzad_fotelDao;

    @Override
    @Transactional
    public List<Rzad_fotel> getRzad_fotel() {
        return rzad_fotelDao.getRzad_fotel();
    }

    @Override
    @Transactional
    public void saveRzad_fotel(Rzad_fotel theRzad_fotel) {

        rzad_fotelDao.saveRzad_fotel(theRzad_fotel);
    }

    @Override
    @Transactional
    public void updateRzad_fotel(Rzad_fotel theRzad_fotel) {
        rzad_fotelDao.updateRzad_fotel(theRzad_fotel);
    }

    @Override
    @Transactional
    public Rzad_fotel getRzad_fotelById(int theId) {
        return rzad_fotelDao.getRzad_fotelById(theId);
    }

    @Override
    @Transactional
    public void deleteRzad_fotel(int theId) {
        rzad_fotelDao.deleteRzad_fotel(theId);
    }
}
