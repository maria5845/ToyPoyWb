package com.toypoy.toypoywb.service;

import com.toypoy.toypoywb.dao.MainDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class MainService {

    @Autowired
    MainDao dao;

    public String timeToString(){
        String timeString = dao.selectTest();
        return timeString;
    };



}
