package ru.home.dao;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.home.entities.Author;
import ru.home.entities.Book;
import ru.home.entities.Publisher;

import java.util.List;

@Repository
public class DaoImpl implements Dao {
    private SessionFactory sessionFactory;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
//Publisher
    @Override
    @SuppressWarnings("unchecked")
    public int createPublisher(Publisher publisher) {
        Query query = sessionFactory.getCurrentSession().createQuery("select name from Publisher where name =: pub");
        query.setParameter("pub",publisher.getName());
        if(query.list().isEmpty()) {
            sessionFactory.getCurrentSession().persist(publisher);
        }
        query = sessionFactory.getCurrentSession().createQuery("select id from Publisher where name =: pub");
        query.setParameter("pub",publisher.getName());
        return (int) query.list().get(0);
    }
    @Override
    @SuppressWarnings("unchecked")
    public List<Publisher> getListOfPublishers() {
        return sessionFactory.getCurrentSession().createQuery("from Publisher").list(); }
    @Override
    public Publisher getPublisherById(int id) {
        return sessionFactory.getCurrentSession().get(Publisher.class,id);
    }
    @Override
    public void updatePublisher(Publisher publisher) {
        sessionFactory.getCurrentSession().update(publisher);
    }
    @Override
    public void deletePublisher(Publisher publisher) {
        sessionFactory.getCurrentSession().delete(publisher);
    }

    //Author
    @Override
    @SuppressWarnings("unchecked")
    public void createAuthor(Author author) {
        Query query1 = sessionFactory.getCurrentSession().createQuery("select lastname from Author where lastname =: ln");
        query1.setParameter("ln",author.getLastname());
        if(query1.list().isEmpty()){
            sessionFactory.getCurrentSession().persist(author);
        } else {
            Query query2 = sessionFactory.getCurrentSession().createQuery("select firstname from Author where firstname =: fn");
            query2.setParameter("fn",author.getFirstname());
            if(query2.list().isEmpty()){
                sessionFactory.getCurrentSession().persist(author);
            } else {
                if(!author.getSurname().isEmpty()) {
                    Query query3 = sessionFactory.getCurrentSession().createQuery("select surname from Author where surname =: sn");
                    query3.setParameter("sn", author.getSurname());
                    if (query3.list().isEmpty()) {
                        sessionFactory.getCurrentSession().persist(author);
                    }
                }
            }
        }
    }
    @Override
    @SuppressWarnings("unchecked")
    public List<Author> getListOfAuthors() {
        return sessionFactory.getCurrentSession().createQuery("from Author ").list();    }
    @Override
    public Author getAuthorById(int id) {
        return sessionFactory.getCurrentSession().get(Author.class, id);
    }
    @Override
    public void updateAuthor(Author author) {
        sessionFactory.getCurrentSession().update(author);
    }
    @Override
    public void deleteAuthor(Author author) {
        sessionFactory.getCurrentSession().delete(author);
    }

//Book
    @Override
    @SuppressWarnings("unchecked")
    public boolean createBook(Book book) {
        int id = createPublisher(book.getPublisher());
        book.setPublisher(getPublisherById(id));

        List<Book> bookList = getListOfBooks();
        for (Book b:bookList){
            if(b.getTitle().equalsIgnoreCase(book.getTitle())
                    && b.getAuthor().equalsIgnoreCase(book.getAuthor())
                    && b.getPublisher().getName().equals(book.getPublisher().getName())
                    && b.getYear()==book.getYear()){
                return false;
            }
        }
        sessionFactory.getCurrentSession().persist(book);
        return true;
    }
    @Override
    @SuppressWarnings("unchecked")
    public List<Book> getListOfBooks() {
        return sessionFactory.getCurrentSession().createQuery("from Book").list();
    }
    @Override
    public Book getBookById(int id) {
        return sessionFactory.getCurrentSession().get(Book.class,id);
    }
    @Override
    public void updateBook(Book book) {
        sessionFactory.getCurrentSession().update(book);
    }
    @Override
    public void deleteBook(Book book) {
        sessionFactory.getCurrentSession().delete(book);
    }


}
