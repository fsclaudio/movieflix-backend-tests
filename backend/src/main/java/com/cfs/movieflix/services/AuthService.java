package com.cfs.movieflix.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cfs.movieflix.entities.User;
import com.cfs.movieflix.repositories.UserRepository;
import com.cfs.movieflix.services.exceptions.UnauthorizedException;

@Service
public class AuthService {
	
	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	public User authenticated() {
		try {
			String username = SecurityContextHolder.getContext().getAuthentication().getName();
			
			return userRepository.findByEmail(username);
			
		} catch (Exception e) {
			throw new UnauthorizedException("Invalid user");
			
		}
	}
	
}