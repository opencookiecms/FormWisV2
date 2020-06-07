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
public class Researcher {
    private int ID;
    private String name;
    private String institute;
    private String field;
    private String email;
    private String phoneNo;
    private String username;
    private String password;
    private String profile_pic;

    public Researcher(int ID, String name, String institute, String field, String email, String phoneNo, String username, String password, String profile_pic) {
        this.ID = ID;
        this.name = name;
        this.institute = institute;
        this.field = field;
        this.email = email;
        this.phoneNo = phoneNo;
        this.username = username;
        this.password = password;
        this.profile_pic = profile_pic;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }
    
    


}
