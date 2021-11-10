package com.toypoy.toypoywb.service;

import com.toypoy.toypoywb.dao.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    MemberDao memberDao;



}
