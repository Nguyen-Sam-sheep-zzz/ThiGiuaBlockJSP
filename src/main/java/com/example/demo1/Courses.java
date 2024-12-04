package com.example.demo1;

public class Courses {
    private String name;
    private String lecturer;
    private int numberOfHours;
    private double price;


    public Courses(String name, String lecturer, int numberOfHours, double price) {
        this.name = name;
        this.lecturer = lecturer;
        this.numberOfHours = numberOfHours;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLecturer() {
        return lecturer;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

    public int getNumberOfHours() {
        return numberOfHours;
    }

    public void setNumberOfHours(int numberOfHours) {
        this.numberOfHours = numberOfHours;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Courses{" +
                "name='" + name + '\'' +
                ", lecturer='" + lecturer + '\'' +
                ", numberOfHours=" + numberOfHours +
                ", price=" + price +
                '}';
    }
}

