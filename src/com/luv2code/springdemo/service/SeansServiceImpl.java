package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.SeansDao;
import com.luv2code.springdemo.entities.Seans;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class SeansServiceImpl implements SeansService {
    //wstrzykniecie seansDao
    @Autowired
    private SeansDao seansDao;


    @Override
    @Transactional
    public List<Seans> getSeans() {
        return seansDao.getSeans();
    }

    @Override
    @Transactional
    public void saveSeans(Seans theSeans) {
        seansDao.saveSeans(theSeans);
    }

    @Override
    @Transactional
    public void updateSeans(Seans theSeans) {
        seansDao.updateSeans(theSeans);

    }

    @Override
    @Transactional
    public Seans getSeansbyId(int theId) {

        return seansDao.getSeansById(theId);
    }

    @Override
    @Transactional
    public void deleteSeans(int theId) {
       seansDao.deleteSeans(theId);
    }

    @Override
    @Transactional
    public List<Seans> getSeansByData() {
        return seansDao.getSeansByData();
    }

    @Override
    @Transactional
    public List<Seans> test() {
        return seansDao.test();
    }

    @Override
    @Transactional
    public List<Seans> SeansDAY(int a) {
        return seansDao.SeansDAY(a);
    }

    @Override
    @Transactional
    public List<Seans> SeansDAY2(int a) {
        return seansDao.SeansDAY2(a);
    }

}
