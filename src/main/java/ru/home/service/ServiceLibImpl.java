package ru.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.home.dao.Dao;
import ru.home.entities.Author;
import ru.home.entities.Book;
import ru.home.entities.Publisher;

import java.util.List;

@Service
public class ServiceLibImpl implements ServiceLib {
    private Dao dao;
    @Autowired
    public void setDao(Dao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional
    public void createAuthor(Author author) {
        dao.createAuthor(author);
    }

    @Override
    @Transactional
    public List<Author> getListOfAuthors() {
        return dao.getListOfAuthors();
    }

    @Override
    @Transactional
    public Author getAuthorById(int id) {
        return dao.getAuthorById(id);
    }

    @Override
    @Transactional
    public void updateAuthor(Author author) {
        dao.updateAuthor(author);
    }

    @Override
    @Transactional
    public void deleteAuthor(Author author) {
        dao.deleteAuthor(author);
    }

    @Override
    @Transactional
    public boolean createBook(Book book) {
       return dao.createBook(book);
    }

    @Override
    @Transactional
    public List<Book> getListOfBooks() {
        return dao.getListOfBooks();
    }

    @Override
    @Transactional
    public Book getBookById(int id) {
        return dao.getBookById(id);
    }

    @Override
    @Transactional
    public void updateBook(Book book) {
        dao.updateBook(book);
    }

    @Override
    @Transactional
    public void deleteBook(Book book) {
        dao.deleteBook(book);
    }

    @Override
    @Transactional
    public int createPublisher(Publisher publisher) {
       return dao.createPublisher(publisher);
    }

    @Override
    @Transactional
    public List<Publisher> getListOfPublishers() {
        return dao.getListOfPublishers();
    }

    @Override
    @Transactional
    public Publisher getPublisherById(int id) {
        return dao.getPublisherById(id);
    }

    @Override
    @Transactional
    public void updatePublisher(Publisher publisher) {
        dao.updatePublisher(publisher);
    }

    @Override
    @Transactional
    public void deletePublisher(Publisher publisher) {
        dao.deletePublisher(publisher);
    }

}
