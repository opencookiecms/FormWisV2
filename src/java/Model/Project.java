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
public class Project {
    
    private int project_id;
    private String project_name;
    private int project_period;
    private String plocation;
    private String document;
    private int rId;

    public Project(int project_id, String project_name, int project_period, String plocation, String document, int rId) {
        this.project_id = project_id;
        this.project_name = project_name;
        this.project_period = project_period;
        this.plocation = plocation;
        this.document = document;
        this.rId = rId;
    }

    public int getProject_id() {
        return project_id;
    }

    public void setProject_id(int project_id) {
        this.project_id = project_id;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public int getProject_period() {
        return project_period;
    }

    public void setProject_period(int project_period) {
        this.project_period = project_period;
    }

    public String getPlocation() {
        return plocation;
    }

    public void setPlocation(String plocation) {
        this.plocation = plocation;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public int getrId() {
        return rId;
    }

    public void setrId(int rId) {
        this.rId = rId;
    }
    
    

    
    
}
