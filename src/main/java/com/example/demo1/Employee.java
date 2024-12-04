package com.example.demo1;

public class Employee {
    private String name;
    private String position;
    private double salary;
    private String department;
    private String status;

    public Employee() {

    }

    public Employee(String name, String position, double salary, String department, String status) {
        this.name = name;
        this.position = position;
        this.salary = salary;
        this.department = department;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
