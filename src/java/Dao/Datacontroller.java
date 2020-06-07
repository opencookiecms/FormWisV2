/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import DBController.Dbconnect;
import Model.Chart;
import java.sql.PreparedStatement;
import Model.Project;
import Model.Fish;
import Model.Member;
import Model.ProjectM;
import Model.ProjectR;
import Model.Researcher;
import com.google.gson.Gson;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author anaqi
 */
public class Datacontroller {
    
    public void login(String username, String password){
        
    }
    
    //Project Part
    public void addProject(Project project){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO project(project_name,project_period,plocation,document,rId) VALUES(?,?,?,?,?)");
            ps.setString(1, project.getProject_name());
            ps.setInt(2, project.getProject_period());
            ps.setString(3, project.getPlocation());
            ps.setString(4,project.getDocument());
            ps.setInt(5,project.getrId());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Project> getAllProject(){
        List<Project> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM project").executeQuery();
            while(rs.next()){
                Project project = new Project(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getInt(6));
                pls.add(project);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<ProjectR> getAllProjectbyR(){
        List<ProjectR> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM project LEFT JOIN researcher ON researcher.ID=project.rID").executeQuery();
            while(rs.next()){
                ProjectR projectR = new ProjectR();
                projectR.setProject_id(rs.getInt("project_id"));
                projectR.setProject_name(rs.getString("project_name"));
                projectR.setPlocation(rs.getString("plocation"));
                projectR.setDocument(rs.getString("document"));
                projectR.setName(rs.getString("name"));
                projectR.setProject_period(rs.getInt("project_period"));
                pls.add(projectR);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<ProjectR> getAllProjectsbyRID(int pid){
        List<ProjectR> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM project LEFT JOIN researcher ON researcher.ID=project.rID WHERE project_id="+pid).executeQuery();
            while(rs.next()){
                ProjectR projectR = new ProjectR();
                projectR.setProject_id(rs.getInt("project_id"));
                projectR.setProject_name(rs.getString("project_name"));
                projectR.setPlocation(rs.getString("plocation"));
                projectR.setDocument(rs.getString("document"));
                projectR.setName(rs.getString("name"));
                projectR.setProject_period(rs.getInt("project_period"));
                pls.add(projectR);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<Project> getAllProjectbyID(int project_id){
        List<Project> pls = new LinkedList<>();
        String sql = "SELECT * FROM project WHERE project_id = " +project_id;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Project project = new Project(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getInt(6));
                pls.add(project);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public void projectEdit(int project_id, String project_name, int project_period, String plocation, String document, int rId){
        String sql = "UPDATE project set project_name = ?, project_period=?, plocation=?,document=?,rId=?"+ "WHERE project_id=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1, project_name);
            ps.setInt(2, project_period);
            ps.setString(3,plocation);
            ps.setString(4, document);
            ps.setInt(5, rId);
            ps.setInt(6, project_id);
        
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }
    
    public void projectDelete(int project_id){
         String sql = "DELETE FROM project WHERE project_id=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, project_id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    //project part end here/////////////////////////////////////////////////___________///\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    //Fish Part
    
    public void addFish(Fish fish){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO fish(scName,cmName,fish_desc,ordID,ordName,fmlyID, fmlyName,catID,catName,fish_lat, fish_long, fish_location,researcher, fish_pic) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,fish.getScName());
            ps.setString(2,fish.getCmName());
            ps.setString(3,fish.getFish_desc());
            ps.setString(4,fish.getOrdID());
            ps.setString(5,fish.getOrdName());
            ps.setString(6,fish.getFmlyID());
            ps.setString(7,fish.getFmlyName());
            ps.setString(8,fish.getCatID());
            ps.setString(9,fish.getCatName());
            ps.setString(10,fish.getFish_lat());
            ps.setString(11,fish.getFish_long());
            ps.setString(12,fish.getFish_location());
            ps.setString(13,fish.getResearcher());
            ps.setString(14,fish.getFish_pic());
        
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Fish> getAllFish(){
        List<Fish> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM fish").executeQuery();
            while(rs.next()){
                Fish fish = new Fish(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15));
                pls.add(fish);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List <Chart> getCountFish(){
        List<Chart> pls = new LinkedList<>();
        try{
              ResultSet rs = Dbconnect.getps("SELECT fish_location,scName, COUNT(fish_location) FROM fish GROUP BY fish_location").executeQuery();
              int count = 0;
              while(rs.next()){
              Chart chart = new Chart();
              chart.setFish_location(rs.getString(1));
              chart.setScName(rs.getString(2));
              chart.setCount(rs.getInt(3));
              pls.add(chart);
              
            
            }
        }catch(ClassNotFoundException | SQLException ex){
             Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<Fish> getFishbyID(int fishID){
        List<Fish> pls = new LinkedList<>();
        String sql = "SELECT * FROM fish WHERE fishID = "+fishID;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Fish fish = new Fish(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15));
                pls.add(fish);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List <Chart> Chartbyid(String fish_location){

        List<Chart> pls = new LinkedList<>();
        String sql = "SELECT scName, COUNT(scName) FROM fish WHERE fish_location ='"+fish_location + "'GROUP BY scName";
        try{
              ResultSet rs = Dbconnect.getps(sql).executeQuery();
              while(rs.next()){
              Chart chart = new Chart();
           
              chart.setScName(rs.getString(1));
              chart.setCount(rs.getInt(2));
              chart.setFish_location(fish_location);
              System.out.print(rs.getString(1));
              System.out.print(rs.getInt(2));
              System.out.print(fish_location);
              pls.add(chart);
        
         
            }
        }catch(ClassNotFoundException | SQLException ex){
             Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
       
        }
        return pls;
    }
    
    public void cechart(){



    }

    
    
    public void fishEdit(int fishID, String scName, String cmName, String fish_desc, String ordID, String ordName, String fmlyID, String fmlyName, String catID, String catName, String fish_lat, String fish_long, String fish_location, String researcher, String fish_pic){
        String sql = "UPDATE fish set scName=?, cmName=?,fish_desc=?,ordID=?,ordName=?, fmlyID=?, fmlyName=?, catID=?,catName=?,fish_lat=?,fish_long=?,fish_location=?,researcher=?,fish_pic=?"+ "WHERE fishID=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1,scName);
            ps.setString(2,cmName);
            ps.setString(3,fish_desc);
            ps.setString(4,ordID);
            ps.setString(5,ordName);
            ps.setString(6,fmlyID);
            ps.setString(7,fmlyName);
            ps.setString(8,catID);
            ps.setString(9,catName);
            ps.setString(10,fish_lat);
            ps.setString(11,fish_long);
            ps.setString(12,fish_location);
            ps.setString(13,researcher);
            ps.setString(14,fish_pic);
            ps.setInt(15, fishID);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }
    
    public void fishDelete(int fishID){
         String sql = "DELETE FROM fish WHERE fishID=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, fishID);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    //fish part end here/////////////////////////////////////////////////___________///\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    
    //Researcher Part
    public void addResearcher(Researcher researcher){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO researcher(name,institute,field,email,phoneNo,username,password,profile_pic) VALUES(?,?,?,?,?,?,?,?)");
            ps.setString(1,researcher.getName());
            ps.setString(2,researcher.getInstitute());
            ps.setString(3,researcher.getField());
            ps.setString(4,researcher.getEmail());
            ps.setString(5,researcher.getPhoneNo());
            ps.setString(6,researcher.getUsername());
            ps.setString(7,researcher.getPassword());
            ps.setString(8,researcher.getProfile_pic());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Researcher> getAllResearcher(){
        List<Researcher> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM researcher").executeQuery();
            while(rs.next()){
                Researcher researcher = new Researcher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
                pls.add(researcher);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
            System.out.print(ex);
        }
        return pls;
    }
    
    
    public static List<Researcher> getResearcherbyID(int ID){
        List<Researcher> pls = new LinkedList<>();
        String sql = "SELECT * FROM researcher WHERE ID = "+ID;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Researcher researcher = new Researcher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
                pls.add(researcher);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public void researcherEdit(int ID, String name, String institute, String field, String email, String phoneNo, String username, String password, String profile_pic){
        String sql = "UPDATE researcher set name=?, institute=?, field=?, email=?, phoneNo=?, username=?, password=?, profile_pic=?"+ "WHERE ID=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1,name);
            ps.setString(2,institute);
            ps.setString(3,field);
            ps.setString(4,email);
            ps.setString(5,phoneNo);
            ps.setString(6,username);
            ps.setString(7,password);
            ps.setString(8,profile_pic);
            ps.setInt(9,ID);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    
    
    public void researcherDelete(int ID){
         String sql = "DELETE FROM researcher WHERE ID=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, ID);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    
    //researcher part end here/////////////////////////////////////////////////___________///\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    
    ///////////////////////////////////////////////////////Member section here///////////////////////////////////////////////////////
    public void addMember(Member member){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO member(membername,institute,phoneNo,email,phoneNo,projectid) VALUES(?,?,?,?,?)");
            ps.setString(1,member.getMembername());
            ps.setString(2,member.getInstitute());
            ps.setString(3,member.getPhoneNo());
            ps.setString(4,member.getEmail());
            ps.setInt(5,member.getProjectid());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Member> getAllMember(){
        List<Member> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM member").executeQuery();
            while(rs.next()){
                Member member = new Member(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
                pls.add(member);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
            System.out.print(ex);
        }
        return pls;
    }
    
    public void memberEdit(int mId, String membername, String institute, String phoneNo, String email, int projectid){
        String sql = "UPDATE member set membername=?, institute=?, field=?, phoneNo=?, email=?, projectid=?"+ "WHERE mId=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1,membername);
            ps.setString(2,institute);
            ps.setString(3,phoneNo);
            ps.setString(4,email);
            ps.setInt(5,projectid);
            ps.setInt(6,mId);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    
        
    public static List<Member> getMemberbyID(int mId){
        List<Member> pls = new LinkedList<>();
        String sql = "SELECT * FROM member WHERE ID = "+mId;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Member member = new Member(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
                pls.add(member);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
        
    public void memberDelete(int mId){
         String sql = "DELETE FROM member WHERE mId=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, mId);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    public static List<ProjectM> getMemberProject(int projectid){
        List<ProjectM> pls = new LinkedList<>();
        String sql = "SELECT * FROM member WHERE projectid = "+projectid;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                ProjectM projectM = new ProjectM();
                projectM.setMembername(rs.getString("membername"));
                projectM.setEmail(rs.getString("email"));
                projectM.setInstitute(rs.getString("institute"));
                projectM.setPhoneNo(rs.getString("phoneNo"));
                pls.add(projectM);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    
    
    //////////////////////////////////////////////////End of members section\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
     
}
