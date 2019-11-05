package ru.home.service;


import ru.home.entities.Author;
import ru.home.entities.Book;
import ru.home.entities.Publisher;

import java.util.List;

public interface ServiceLib {

    boolean createBook(Book book);
    List<Book> getListOfBooks();
    Book getBookById(int id);
    void updateBook(Book book);
    void deleteBook(Book book);

    void createAuthor(Author author);
    List<Author> getListOfAuthors();
    Author getAuthorById(int id);
    void updateAuthor(Author author);
    void deleteAuthor(Author author);

    int createPublisher(Publisher publisher);
    List<Publisher> getListOfPublishers();
    Publisher getPublisherById(int id);
    void updatePublisher(Publisher publisher);
    void deletePublisher(Publisher publisher);
}
