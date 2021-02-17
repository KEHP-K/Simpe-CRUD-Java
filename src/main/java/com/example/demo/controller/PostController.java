package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.domain.Post;
import com.example.demo.service.PostService;

@Controller
public class PostController {
	
	@Autowired
	PostService postService;
	 
	@Controller
	static class FaviconController {
	 
	    @GetMapping("favicon.ico")
	    @ResponseBody
	    void returnNoFavicon() {
	    }
	}
    
	@GetMapping("/")
	public ModelAndView findPosts() {
		List<Post> postList=postService.findPosts();
		ModelAndView nextView = new ModelAndView("index");
		nextView.addObject("postList", postList);
		return nextView;
	}
	
	@GetMapping("/new")
	public ModelAndView newPost() {
		ModelAndView nextView = new ModelAndView("new");
		return nextView;
	}
	
	
	
	
	@GetMapping("/{id}")
	public ModelAndView detailPost(@PathVariable("id") long id) {
		Post post = postService.findPost(id);
		ModelAndView nextView = new ModelAndView("detail");
		nextView.addObject("post", post);
		return nextView;
	}
	
	@GetMapping("/{id}/edit")
	public ModelAndView editPost(@PathVariable("id") long id) {
		Post post = postService.findPost(id);
		ModelAndView nextView = new ModelAndView("edit");
		nextView.addObject("post", post);
		return nextView;
	}
	
	@PostMapping(path="/")
	public ModelAndView createPost(Post post) {
		postService.createPost(post);
		ModelAndView nextView = new ModelAndView("redirect:/");
		return nextView;
	}
	
	@PutMapping("/{id}")
	public ModelAndView updatePost(@PathVariable("id") long id, Post post) {
		postService.updatePost(post);
		ModelAndView nextView = new ModelAndView("redirect:/"+id);
		return nextView;
	}
	
	@DeleteMapping("/{id}")
	public ModelAndView deletePost(@PathVariable("id") long id) {
		postService.deletePost(id);
		ModelAndView nextView = new ModelAndView("redirect:/");
		return nextView;
	}
	
	
}
