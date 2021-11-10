package com.toypoy.toypoywb.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Mapper
@Repository
public interface MemberDao {


    public int getMemberCount(HashMap<String,Object> param);

    public HashMap<String,Object> getMember(int Member_seq);

    public HashMap<String,Object> getSocialMember(HashMap<String,Object> param);

    public HashMap<String,Object> getMemberById(HashMap<String,Object> param);

    public List<HashMap<String, Object>> getMemberList(HashMap<String, Object> param);

    public String getAuthMemberId(HashMap<String, Object> param);

    public HashMap<String, Object> getMemberIdByEmail(HashMap<String, Object> param);

    public String getMemberPasswdByAuthId(HashMap<String, Object> param);

    public void insertMember(HashMap<String,Object> param);

    



}
