package ru.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.home.entities.Author;
import ru.home.entities.Book;
import ru.home.entities.Publisher;
import ru.home.service.ServiceLib;

import java.util.List;

@Controller
public class LibController {
    private ServiceLib serviceLib;
    @Autowired
    public void setServiceLib(ServiceLib serviceLib) {
        this.serviceLib = serviceLib;
    }
//Get basic pages
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getHomePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home");
        return modelAndView;
}
    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public ModelAndView getBooksPages() {
        List<Book> bookList = serviceLib.getListOfBooks();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("books");
        modelAndView.addObject("bookList",bookList);
        return modelAndView;
    }
    @RequestMapping(value = "/authors", method = RequestMethod.GET)
    public ModelAndView getAuthorsPage() {
        List<Author> authorList = serviceLib.getListOfAuthors();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("authors");
        modelAndView.addObject("authorList", authorList);
        return modelAndView;
    }
    @RequestMapping(value = "/publishers", method = RequestMethod.GET)
    public ModelAndView getPublishersPage() {
        List<Publisher> publisherList = serviceLib.getListOfPublishers();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("publishers");
        modelAndView.addObject("publisherList", publisherList);
        return modelAndView;
    }
//Get pages for changes data
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView getEditBookPage(@PathVariable("id") int id,@ModelAttribute("message") String message) {
        Book book = serviceLib.getBookById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editBook");
        modelAndView.addObject("book",book);
        return modelAndView;
    }
    @RequestMapping(value = "/editAuthor/{id}", method = RequestMethod.GET)
    public ModelAndView getEditAuthorPage(@PathVariable("id") int id) {
        Author author = serviceLib.getAuthorById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editAuthor");
        modelAndView.addObject("author", author);
        return modelAndView;
    }
    @RequestMapping(value = "/editPublisher/{id}", method = RequestMethod.GET)
    public ModelAndView getEditPublisherPage(@PathVariable("id") int id) {
        Publisher publisher = serviceLib.getPublisherById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPublisher");
        modelAndView.addObject("publisher", publisher);
        return modelAndView;
    }

    //Get pages for add data
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public ModelAndView getAddBookPage(@ModelAttribute("message") String message) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editBook");
        return modelAndView;
    }
    @RequestMapping(value = "/addAuthor", method = RequestMethod.GET)
    public ModelAndView getAddAuthorPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editAuthor");
        return modelAndView;
    }
    @RequestMapping(value = "/addPublisher", method = RequestMethod.GET)
    public ModelAndView getAddPublisherPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPublisher");
        return modelAndView;
    }

//Update data
    @PostMapping(value = "/editBook")
    public ModelAndView editBook(@ModelAttribute("book") Book book) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:books");
        serviceLib.updateBook(book);
        return modelAndView;
    }
    @RequestMapping(value = "/editAuthor", method = RequestMethod.POST)
    public ModelAndView editAuthor(@ModelAttribute("author") Author author) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:authors");
        serviceLib.updateAuthor(author);
        return modelAndView;
    }
    @RequestMapping(value = "/editPublisher", method = RequestMethod.POST)
    public ModelAndView editPublisher(@ModelAttribute("publisher") Publisher publisher) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:publishers");
        serviceLib.updatePublisher(publisher);
        return modelAndView;
    }

//Add data to DB
    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public ModelAndView addBook(@ModelAttribute("book") Book book) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:books");
        serviceLib.createBook(book);
        return modelAndView;
    }
    @RequestMapping(value = "/addAuthor", method = RequestMethod.POST)
    public ModelAndView addAuthor(@ModelAttribute("author") Author author) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:authors");
        serviceLib.createAuthor(author);
        return modelAndView;
    }
    @RequestMapping(value = "/addPublisher", method = RequestMethod.POST)
    public ModelAndView addPublisher(@ModelAttribute("publisher") Publisher publisher) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:publishers");
        serviceLib.createPublisher(publisher);
        return modelAndView;
    }
// Delete data
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBook(@PathVariable("id") int id) {
        Book book = serviceLib.getBookById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:books");
        serviceLib.deleteBook(book);
        return modelAndView;
    }
    @RequestMapping(value = "/deleteAuthor/{id}", method = RequestMethod.GET)
    public ModelAndView deleteAuthor(@PathVariable("id") int id) {
        Author author = serviceLib.getAuthorById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:authors");
        serviceLib.deleteAuthor(author);
        return modelAndView;
    }
    @RequestMapping(value = "/deletePublisher/{id}", method = RequestMethod.GET)
    public ModelAndView deletePublisher(@PathVariable("id") int id) {
        Publisher publisher = serviceLib.getPublisherById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:publishers");
        serviceLib.deletePublisher(publisher);
        return modelAndView;
    }
}
