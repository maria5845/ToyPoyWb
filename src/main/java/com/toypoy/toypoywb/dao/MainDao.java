package com.toypoy.toypoywb.dao;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@RequiredArgsConstructor
@Repository
public class MainDao {

    private final SqlSession sqlSession;

    public String selectTest(){
        return sqlSession.selectOne("selectTest");
    }

    public List<HashMap<String,Object>> selectList(){
        return sqlSession.selectList("selectList");
    }



}
