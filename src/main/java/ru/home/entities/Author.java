package ru.home.entities;

import javax.persistence.*;

@Entity
@Table(name = "authors")
public class Author {
    public Author() {
    }
    private int id;
    private String firstname;
    private String lastname;
    private String surname;


    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    @Column(name = "firstname")
    public String getFirstname() {
        return firstname;
    }
    public void setFirstname(String name) {
        this.firstname = name;
    }
    @Column(name = "lastname")
    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    @Column(name = "surname")
    public String getSurname() {
        return surname;
    }
    public void setSurname(String surname) {
        this.surname = surname;
    }

}
