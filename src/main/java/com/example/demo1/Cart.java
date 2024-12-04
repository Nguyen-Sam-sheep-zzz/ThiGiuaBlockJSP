package com.example.demo1;

public class Cart {
    private String nameProduct;
    private int quantity;
    private double price;
    private String total;

    public Cart(String nameProduct, int quantity, double price, String total) {
        this.nameProduct = nameProduct;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "nameProduct='" + nameProduct + '\'' +
                ", quantity=" + quantity +
                ", price=" + price +
                ", total='" + total + '\'' +
                '}';
    }
}

