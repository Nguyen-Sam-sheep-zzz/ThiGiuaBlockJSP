package com.example.demo1;

public class Leave {
    private String name;
    private String dateF;
    private String dateE;
    private String status;

    public Leave(String name, String dateF, String dateE, String status) {
        this.name = name;
        this.dateF = dateF;
        this.dateE = dateE;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateF() {
        return dateF;
    }

    public void setDateF(String dateF) {
        this.dateF = dateF;
    }

    public String getDateE() {
        return dateE;
    }

    public void setDateE(String dateE) {
        this.dateE = dateE;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Leave{" +
                "name='" + name + '\'' +
                ", dateF='" + dateF + '\'' +
                ", dateE='" + dateE + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
