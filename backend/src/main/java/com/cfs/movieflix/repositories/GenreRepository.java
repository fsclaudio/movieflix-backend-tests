package com.cfs.movieflix.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cfs.movieflix.entities.Genre;

@Repository
public interface GenreRepository extends JpaRepository<Genre, Long> {

}
