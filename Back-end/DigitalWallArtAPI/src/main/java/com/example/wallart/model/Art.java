package com.example.wallart.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Art {

    @Id
    private String id;

    private String art_title;
    private String artist_name;
    private double price;
    private String image_url;
    private String size;

    public Art() {}

  
    public Art(String id, String art_title, String artist_name, double price, String image_url, String size) {
        this.id = id;
        this.art_title = art_title;
        this.artist_name = artist_name;
        this.price = price;
        this.image_url = image_url;
        this.size = size;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getArt_title() {
        return art_title;
    }

    public void setArt_title(String art_title) {
        this.art_title = art_title;
    }

    public String getArtist_name() {
        return artist_name;
    }

    public void setArtist_name(String artist_name) {
        this.artist_name = artist_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
    
   
    public String getSize() {
        return size;
    }

    
    public void setSize(String size) {
        this.size = size;
    }
}