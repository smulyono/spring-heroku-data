package me.smulyono.springheroku.dao;

import me.smulyono.springheroku.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository<User, Integer> {

}
