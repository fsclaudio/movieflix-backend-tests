package com.cfs.movieflix.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cfs.movieflix.dto.MovieDTO;
import com.cfs.movieflix.entities.Genre;
import com.cfs.movieflix.entities.Movie;
import com.cfs.movieflix.repositories.GenreRepository;
import com.cfs.movieflix.repositories.MovieRepository;
import com.cfs.movieflix.services.exceptions.ResourceNotFoundException;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository repository;
	
	@Autowired
	private GenreRepository genrerepository;
	

	@Transactional(readOnly = true)
	public Page<MovieDTO> findAllPaged(Long genreId,  PageRequest pageRequest){
		Genre genre = (genreId ==0) ? null : genrerepository.getOne(genreId);
		Page<Movie> page= repository.find(genre, pageRequest);
			
		return page.map(x -> new MovieDTO(x, x.getGenre()));
	}

	@Transactional(readOnly = true)
	public MovieDTO findById(Long id) {
		Optional<Movie> obj = repository.findById(id);
		
		Movie entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
		
		return new MovieDTO(entity, entity.getGenre(),entity.getReviews());
		
	}

	
}
