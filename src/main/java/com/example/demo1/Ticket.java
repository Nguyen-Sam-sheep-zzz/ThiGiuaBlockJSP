package com.example.demo1;

public class Ticket {
    private String id;
    private String name;
    private String show;
    private double price;

    public Ticket(String id, String name, String show, double price) {
        this.id = id;
        this.name = name;
        this.show = show;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShow() {
        return show;
    }

    public void setShow(String show) {
        this.show = show;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", show='" + show + '\'' +
                ", price=" + price +
                '}';
    }
}

