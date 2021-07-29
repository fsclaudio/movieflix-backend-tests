package com.cfs.movieflix.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cfs.movieflix.dto.ReviewDTO;
import com.cfs.movieflix.entities.Movie;
import com.cfs.movieflix.entities.Review;
import com.cfs.movieflix.entities.User;
import com.cfs.movieflix.repositories.ReviewRepository;
import com.cfs.movieflix.services.exceptions.ResourceNotFoundException;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewRepository repository;
	
	@Autowired
	private UserService userservice;
	
	@Transactional(readOnly = true)
	public List<ReviewDTO> findAll() {
		List<Review> list = repository.findAll();
		return list.stream().map(x -> new ReviewDTO(x)).collect(Collectors.toList());
	}
	
	@Transactional(readOnly = true)
	public ReviewDTO findByIdReviewMovie(Long id) {
		Optional<Review> obj = repository.findById(id);
		Review entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
		
		return new ReviewDTO(entity);	
	}
	
	@Transactional
	public ReviewDTO insert(ReviewDTO dto) {
		Review entity = new Review();
		User user = new User();
		copy(entity, user, dto);
		entity = repository.save(entity);
		
		return new ReviewDTO(entity);
	}
	
	public void copy(Review ent, User user, ReviewDTO dto) {
		ent.setText(dto.getText());
		ent.setMovie(new Movie(dto.getMovieId(), null, null, null, null, null, null));
		user.setId(userservice.getLoggedUser().getId()); 
		user.setName(userservice.getLoggedUser().getName());
		user.setEmail(userservice.getLoggedUser().getEmail());
		ent.setUser(user);
	}

}
