package com.example.demo1;

public class EmployeeTimekeeping {
    private String name;
    private String Workday;
    private int numberOfWorkingHours;
    private String status;

    public EmployeeTimekeeping(String name, String workday, int numberOfWorkingHours, String status) {
        this.name = name;
        Workday = workday;
        this.numberOfWorkingHours = numberOfWorkingHours;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWorkday() {
        return Workday;
    }

    public void setWorkday(String workday) {
        Workday = workday;
    }

    public int getNumberOfWorkingHours() {
        return numberOfWorkingHours;
    }

    public void setNumberOfWorkingHours(int numberOfWorkingHours) {
        this.numberOfWorkingHours = numberOfWorkingHours;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "EmployeeTimekeeping{" +
                "name='" + name + '\'' +
                ", Workday='" + Workday + '\'' +
                ", numberOfWorkingHours=" + numberOfWorkingHours +
                ", status='" + status + '\'' +
                '}';
    }
}
