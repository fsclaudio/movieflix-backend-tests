package com.cfs.movieflix.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cfs.movieflix.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
