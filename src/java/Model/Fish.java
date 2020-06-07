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
public class Fish {

    private int fishID;
    private String scName;
    private String cmName;
    private String fish_desc;
    private String ordID;
    private String ordName;
    private String fmlyID;
    private String fmlyName;
    private String catID;
    private String catName;
    private String fish_lat;
    private String fish_long;
    private String fish_location;
    private String researcher;
    private String fish_pic;

    public Fish(int fishID, String scName, String cmName, String fish_desc, String ordID, String ordName, String fmlyID, String fmlyName, String catID, String catName, String fish_lat, String fish_long, String fish_location, String researcher, String fish_pic) {
        this.fishID = fishID;
        this.scName = scName;
        this.cmName = cmName;
        this.fish_desc = fish_desc;
        this.ordID = ordID;
        this.ordName = ordName;
        this.fmlyID = fmlyID;
        this.fmlyName = fmlyName;
        this.catID = catID;
        this.catName = catName;
        this.fish_lat = fish_lat;
        this.fish_long = fish_long;
        this.fish_location = fish_location;
        this.researcher = researcher;
        this.fish_pic = fish_pic;
    }

    public int getFishID() {
        return fishID;
    }

    public void setFishID(int fishID) {
        this.fishID = fishID;
    }

    public String getScName() {
        return scName;
    }

    public void setScName(String scName) {
        this.scName = scName;
    }

    public String getCmName() {
        return cmName;
    }

    public void setCmName(String cmName) {
        this.cmName = cmName;
    }

    public String getFish_desc() {
        return fish_desc;
    }

    public void setFish_desc(String fish_desc) {
        this.fish_desc = fish_desc;
    }

    public String getOrdID() {
        return ordID;
    }

    public void setOrdID(String ordID) {
        this.ordID = ordID;
    }

    public String getOrdName() {
        return ordName;
    }

    public void setOrdName(String ordName) {
        this.ordName = ordName;
    }

    public String getFmlyID() {
        return fmlyID;
    }

    public void setFmlyID(String fmlyID) {
        this.fmlyID = fmlyID;
    }

    public String getFmlyName() {
        return fmlyName;
    }

    public void setFmlyName(String fmlyName) {
        this.fmlyName = fmlyName;
    }

    public String getCatID() {
        return catID;
    }

    public void setCatID(String catID) {
        this.catID = catID;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getFish_lat() {
        return fish_lat;
    }

    public void setFish_lat(String fish_lat) {
        this.fish_lat = fish_lat;
    }

    public String getFish_long() {
        return fish_long;
    }

    public void setFish_long(String fish_long) {
        this.fish_long = fish_long;
    }

    public String getFish_location() {
        return fish_location;
    }

    public void setFish_location(String fish_location) {
        this.fish_location = fish_location;
    }

    public String getResearcher() {
        return researcher;
    }

    public void setResearcher(String researcher) {
        this.researcher = researcher;
    }

    public String getFish_pic() {
        return fish_pic;
    }

    public void setFish_pic(String fish_pic) {
        this.fish_pic = fish_pic;
    }
    
    


 
    
    

}
