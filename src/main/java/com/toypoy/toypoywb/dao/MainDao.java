package com.toypoy.toypoywb.dao;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@RequiredArgsConstructor
@Repository
public class MainDao {

    private final SqlSession sqlSession;

    public String selectTest(){
        return sqlSession.selectOne("selectTest");
    }





}
