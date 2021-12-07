package com.toypoy.toypoywb.dao.main;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MainDao {

     public String selectTest();


}
