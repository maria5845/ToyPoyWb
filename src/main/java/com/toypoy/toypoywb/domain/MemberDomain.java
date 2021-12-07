package com.toypoy.toypoywb.domain;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import java.util.Date;

@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class MemberDomain {
    @Getter
    private int Member_seq;
    @Getter
    private String Member_id;
    @Getter
    private String Member_pw;
    @Getter
    private String Member_pw2;
    @Getter
    private String Member_name;
    @Getter
    private String Member_email;
    @Getter
    private String Member_phone;
    @Getter
    private String Member_addrno;
    @Getter
    private String Member_addr1;
    @Getter
    private String Member_addr2;
    @Getter
    private String Member_social_id;
    @Getter
    private String Member_social_type;
    @Getter
    private String Member_authid;
    @Getter
    private Date reg_date;

    public boolean matchPassword(String loginPassword) {
        if (loginPassword == null) {
            return false;
        }
        return loginPassword.equals(Member_pw);
    }

    public void update(MemberDomain memberVO) {
        this.Member_id = memberVO.getMember_id();
        this.Member_pw = memberVO.getMember_pw();
        this.Member_pw2 = memberVO.getMember_pw2();
        this.Member_name = memberVO.getMember_name();
        this.Member_email = memberVO.getMember_email();
        this.Member_phone = memberVO.getMember_phone();
        this.Member_addrno = memberVO.getMember_addrno();
        this.Member_addr1 = memberVO.getMember_addr1();
        this.Member_addr2 = memberVO.getMember_addr2();
        this.Member_social_id = memberVO.getMember_social_id();
        this.Member_social_type = memberVO.getMember_social_type();
        this.reg_date = memberVO.getReg_date();
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "Member_seq=" + Member_seq +
                ", Member_id='" + Member_id + '\'' +
                ", Member_pw='" + Member_pw + '\'' +
                ", Member_pw2='" + Member_pw2 + '\'' +
                ", Member_name='" + Member_name + '\'' +
                ", Member_email='" + Member_email + '\'' +
                ", Member_phone='" + Member_phone + '\'' +
                ", Member_addrno='" + Member_addrno + '\'' +
                ", Member_addr1='" + Member_addr1 + '\'' +
                ", Member_addr2='" + Member_addr2 + '\'' +
                ", Member_social_id='" + Member_social_id + '\'' +
                ", Member_social_type='" + Member_social_type + '\'' +
                ", Member_authid='" + Member_authid + '\'' +
                ", reg_date=" + reg_date +
                '}';
    }
}
