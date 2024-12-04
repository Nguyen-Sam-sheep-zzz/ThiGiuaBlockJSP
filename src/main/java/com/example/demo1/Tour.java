package com.example.demo1;

public class Tour {
    private String name;
    private String location;
    private String departureDate;
    private String status;
    private double price;


    public Tour(String name, String location, String departureDate, String status, double price) {
        this.name = name;
        this.location = location;
        this.departureDate = departureDate;
        this.status = status;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "name='" + name + '\'' +
                ", location='" + location + '\'' +
                ", departureDate='" + departureDate + '\'' +
                ", status='" + status + '\'' +
                ", price=" + price +
                '}';
    }
}
