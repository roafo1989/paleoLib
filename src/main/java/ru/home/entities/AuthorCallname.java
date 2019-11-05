package ru.home.entities;

import javax.persistence.*;

@Entity
@Table(name = "callnames")
public class AuthorCallname {
    public AuthorCallname() {
    }

    public AuthorCallname(String firstname, String lastname, String surname) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.surname = surname;
    }

    private int id;
    private String firstname;
    private String lastname;
    private String surname;
    private int idOfOriginal;

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
    @Column(name = "id_original_name")
    public int getIdOfOriginal() {
        return idOfOriginal;
    }

    public void setIdOfOriginal(int idOfOriginal) {
        this.idOfOriginal = idOfOriginal;
    }
}
