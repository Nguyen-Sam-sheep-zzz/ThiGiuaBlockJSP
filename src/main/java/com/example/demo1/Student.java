package com.example.demo1;

public class Student {
    private String name;
    private String studentId;
    private double averageScore;
    private String status;

    public Student() {

    }

    public Student(String name, String studentId, double averageScore, String status) {
        this.name = name;
        this.studentId = studentId;
        this.averageScore = averageScore;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(double averageScore) {
        this.averageScore = averageScore;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", studentId='" + studentId + '\'' +
                ", averageScore=" + averageScore +
                ", status='" + status + '\'' +
                '}';
    }
}
