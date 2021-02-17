package com.example.demo.domain;

import javax.persistence.*;

@Entity
@Table(name="post")
public class Post {
	private long id;
	private String title;
	private String content;
	private String author;

	public Post() {}
	public Post(String title, String content, String author) {
		this.title = title;
		this.content = content;
		this.author = author;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id=id;
	}
	
	@Column(name="title", nullable = false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name="content", nullable = false)
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name="author", nullable = false)
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
}
