/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author anaqi
 */
public class Member {
    
    private int mId;
    private String membername;
    private String institute;
    private String phoneNo;
    private String email;
    private int projectid;

    public Member(int mId, String membername, String institute, String phoneNo, String email, int projectid) {
        this.mId = mId;
        this.membername = membername;
        this.institute = institute;
        this.phoneNo = phoneNo;
        this.email = email;
        this.projectid = projectid;
    }

    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getProjectid() {
        return projectid;
    }

    public void setProjectid(int projectid) {
        this.projectid = projectid;
    }
    
    
    
}
