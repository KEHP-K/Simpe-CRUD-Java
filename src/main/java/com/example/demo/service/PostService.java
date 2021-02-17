package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Post;
import com.example.demo.repository.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository postRepository;
	
	public void createPost(Post post) {
		postRepository.save(post);
	}
	
	public Post findPost(long id) {
		Optional<Post> optionalPost=postRepository.findById(id);
		if(optionalPost.isPresent()) { 
			Post post = optionalPost.get();
			return post;
		}
		return null;
	}
	
	public List<Post> findPosts() {
		return (List<Post>) postRepository.findAll();
	}
	
	public void updatePost(Post post) {
		Optional<Post> optionalPost=postRepository.findById(post.getId());
		if(optionalPost.isPresent()) {
			Post editPost = optionalPost.get();
			editPost.setTitle(post.getTitle());
			editPost.setContent(post.getContent());
			editPost.setAuthor(post.getAuthor());
			postRepository.save(editPost);
		}
	}
	
	public void deletePost(long id) {
		postRepository.deleteById(id);
	}
}
