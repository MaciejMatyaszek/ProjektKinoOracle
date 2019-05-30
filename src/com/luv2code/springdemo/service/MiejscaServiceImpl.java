package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.MiejscaDao;
import com.luv2code.springdemo.entities.Miejsca;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class MiejscaServiceImpl implements MiejscaService {
    @Autowired
    MiejscaDao miejscaDao;

    @Override
    @Transactional
    public List<Miejsca> getMiejsca() {
        return miejscaDao.getMiejsca();
    }

    @Override
    @Transactional
    public void saveMiejsca(Miejsca theMiejsca) {
        miejscaDao.saveMiejsca(theMiejsca);
    }

    @Override
    @Transactional
    public void updateMiejsca(Miejsca theMiejsca) {
        miejscaDao.updateMiejsca(theMiejsca);
    }

    @Override
    @Transactional
    public Miejsca getMiejscaById(int theId) {
        return miejscaDao.getMiejscaById(theId);
    }

    @Override
    @Transactional
    public void deleteMiejsca(int theId) {
        miejscaDao.deleteMiejsca(theId);
    }

    @Override
    @Transactional
    public List<Miejsca> getMiejscaByIdSeansu(int theId) {
        return miejscaDao.getMiejscaByIdSeansu(theId);
    }
}
