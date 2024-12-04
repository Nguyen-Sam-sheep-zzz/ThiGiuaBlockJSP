package com.example.demo1;

public class Document {
    private String name;
    private String subject;
    private String gv;
    private String format;

    public Document(String name, String subject, String gv, String format) {
        this.name = name;
        this.subject = subject;
        this.gv = gv;
        this.format = format;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getGv() {
        return gv;
    }

    public void setGv(String gv) {
        this.gv = gv;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    @Override
    public String toString() {
        return "Document{" +
                "name='" + name + '\'' +
                ", subject='" + subject + '\'' +
                ", gv='" + gv + '\'' +
                ", format='" + format + '\'' +
                '}';
    }
}
