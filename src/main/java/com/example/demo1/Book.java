package com.example.demo1;

public class Book {
    private String name;
    private String author;
    private String genre;
    private String yearOfPublication;

    public Book() {

    }

    public Book(String name, String author, String genre, String yearOfPublication) {
        this.name = name;
        this.author = author;
        this.genre = genre;
        this.yearOfPublication = yearOfPublication;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getYearOfPublication() {
        return yearOfPublication;
    }

    public void setYearOfPublication(String yearOfPublication) {
        this.yearOfPublication = yearOfPublication;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", genre='" + genre + '\'' +
                ", yearOfPublication='" + yearOfPublication + '\'' +
                '}';
    }
}
