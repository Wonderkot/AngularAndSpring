/**
 * 
 */
package spring.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import spring.domain.Book;

/**
 * @author pd199717
 *
 */
@RestController
public class ShopController {
	ArrayList<Book> books = new ArrayList<Book>();

	@RequestMapping(value = "rest/getAllBooks", method = RequestMethod.GET)
	public @ResponseBody ArrayList<Book> getBooks() {

		Book book = new Book("Azbuka", "Millar", "Kingsman");
		Book book2 = new Book("Komilfo", "Istman", "Turtles");
		books.add(book);
		books.add(book2);
		return books;
	}

	@RequestMapping(value = "rest/delete", method = RequestMethod.POST)
	public void delete(@RequestBody Book book) {
		if (book == null) {
			System.out.println("null");
		}
		System.out.println(book.getAuthor());
		
		books.remove(book);
		
	}

}
