package com.toypoy.toypoywb.vo;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import java.lang.reflect.Member;

@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class MemberVO {
    @Getter
    private int MEMBER_SEQ;
    @Getter
    private String MEMBER_ID;
    @Getter
    private String MEMBER_PW;
    @Getter
    private String MEMBER_NAME;
    @Getter
    private int MEMBER_ADNO;
    @Getter
    private String MEMBER_AD1;
    @Getter
    private String MEMBER_AD2;


    public boolean matchPassword(String loginPassword) {
        if (loginPassword == null) {
            return false;
        }

        return loginPassword.equals(MEMBER_PW);
    }

    public void update(MemberVO memberVO) {
        this.MEMBER_ID = memberVO.getMEMBER_ID();
        this.MEMBER_PW = memberVO.getMEMBER_PW();
        this.MEMBER_NAME = memberVO.getMEMBER_NAME();
        this.MEMBER_ADNO = memberVO.getMEMBER_ADNO();
        this.MEMBER_AD1 = memberVO.getMEMBER_AD1();
        this.MEMBER_AD2 = memberVO.getMEMBER_AD2();
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "MEMBER_SEQ=" + MEMBER_SEQ +
                ", MEMBER_ID='" + MEMBER_ID + '\'' +
                ", MEMBER_PW='" + MEMBER_PW + '\'' +
                ", MEMBER_NAME='" + MEMBER_NAME + '\'' +
                ", MEMBER_ADNO=" + MEMBER_ADNO +
                ", MEMBER_AD1='" + MEMBER_AD1 + '\'' +
                ", MEMBER_AD2='" + MEMBER_AD2 + '\'' +
                '}';
    }
}
