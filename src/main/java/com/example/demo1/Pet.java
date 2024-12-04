package com.example.demo1;

public class Pet {
    private String name;
    private int age;
    private String species;
    private String owner;

    public Pet(String name, int age, String species, String owner) {
        this.name = name;
        this.age = age;
        this.species = species;
        this.owner = owner;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", species='" + species + '\'' +
                ", owner='" + owner + '\'' +
                '}';
    }
}
