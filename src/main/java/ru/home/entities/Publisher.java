package ru.home.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "publishers")
public class Publisher {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "publisher", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private List<Book> booksList;

    public Publisher() {
    }

    public Publisher(String name) {
        this.name = name;
        booksList = new ArrayList<>();
    }

    @Override
    public String toString() {
        return getName();
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public List<Book> getBooksList() {
        return booksList;
    }
    public void setBooksList(List<Book> booksList) {
        this.booksList = booksList;
    }

    public void addBook(Book book){
        book.setPublisher(this);
        booksList.add(book);
    }
    public void removeBook(Book book){
        booksList.remove(book);
    }

}
