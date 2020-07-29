package Models;

import java.util.UUID;

public class Student {
    private String name;
    private String surname;
    private int averageScore;
    private String id;

    public Student(String name, String surname,  int averageScore){
        this.name = name;
        this.surname = surname;
        this.averageScore = averageScore;
        String id1 = UUID.randomUUID().toString();
        this.id = id1;
    }

    public void setAverageScore(int averageScore) {
        this.averageScore = averageScore;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getScore(){
        return averageScore;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getId() {
        return id;
    }

    @Override
    public String toString() {
        return this.getName();
    }

}
