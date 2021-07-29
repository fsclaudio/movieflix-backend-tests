package com.cfs.movieflix.dto;

import java.io.Serializable;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import com.cfs.movieflix.entities.Review;
import com.cfs.movieflix.entities.User;


public class ReviewDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;
	
	@NotBlank(message = "Campo não pode ser vazio")
	private String text;
	
	private Long movieId;
	
	private User user;
	
	public ReviewDTO() {
	}

	public ReviewDTO(Long id, @Valid String text, Long movieId) {
		this.id = id;
		this.text = text;
		this.movieId = movieId;
	}
	
	public ReviewDTO(@Valid  Review  entity) {
		id = entity.getId();
		text = entity.getText();
		movieId = entity.getMovie().getId();
		user = entity.getUser();
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

	public User getUser() {
		return user;
	}

	
}
