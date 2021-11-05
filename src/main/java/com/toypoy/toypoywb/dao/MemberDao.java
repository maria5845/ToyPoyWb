package com.toypoy.toypoywb.dao;

import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@RequiredArgsConstructor
@Repository
public class MemberDao {

    private final SqlSession sqlSession;



}
