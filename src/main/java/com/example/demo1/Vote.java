package com.example.demo1;

public class Vote {
    private String question;
    private int options;
    private double total;

    public Vote(String question, int options, double total) {
        this.question = question;
        this.options = options;
        this.total = total;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public int getOptions() {
        return options;
    }

    public void setOptions(int options) {
        this.options = options;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Vote{" +
                "question='" + question + '\'' +
                ", options=" + options +
                ", total=" + total +
                '}';
    }
}
