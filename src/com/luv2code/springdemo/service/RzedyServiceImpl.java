package com.luv2code.springdemo.service;


import com.luv2code.springdemo.dao.RzedyDao;
import com.luv2code.springdemo.entities.Rzedy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class RzedyServiceImpl implements RzedyService{

    @Autowired
    RzedyDao rzedyDao;

    @Override
    @Transactional
    public List<Rzedy> getRzedy() {
        return rzedyDao.getRzedy();
    }

    @Override
    @Transactional
    public void saveRzedy(Rzedy theRzedy) {
        rzedyDao.saveRzedy(theRzedy);
    }

    @Override
    @Transactional
    public void updateRzedy(Rzedy theRzedy) {
        rzedyDao.updateRzedy(theRzedy);
    }

    @Override
    @Transactional
    public Rzedy getRzedy(int theId) {
        return rzedyDao.getRzedy(theId);
    }

    @Override
    @Transactional
    public void deleteRzedy(int theId) {
        rzedyDao.deleteRzedy(theId);
    }
}
