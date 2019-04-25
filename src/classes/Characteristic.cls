/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Characteristic {
    private String color;
    private Integer maxSpeed;
    private Date yearOfRelease;
    private Integer price;

    public Characteristic(String color, Integer maxSpeed, Date yearOfRelease, Integer price){
        this.color = color;
        this.maxSpeed = maxSpeed;
        this.yearOfRelease = yearOfRelease;
        this.price = price;
    }

    public Integer getMaxSpeed(){
        return maxSpeed;
    }
    public Date getYearOfRelease(){
        return yearOfRelease;
    }
    public String getColor(){
        return color;
    }
    public Integer getPrice(){
        return price;
    }


}