package com.example.demo1;

public class Appointment {
    private String name;
    private String date;
    private String location;
    private String describe;

    public Appointment(String name, String date, String location, String describe) {
        this.name = name;
        this.date = date;
        this.location = location;
        this.describe = describe;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", location='" + location + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
