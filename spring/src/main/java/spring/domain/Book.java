/**
 * 
 */
package spring.domain;

/**
 * @author pd199717
 *
 */
public class Book {
	private String publisher;
	private String author;
	private String title;
	
	public Book () {
		
	}
	
	public Book (String publisher, String author, String title) {
		setPublisher(publisher);
		setAuthor(author);
		setTitle(title);
	}
	
	
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
