package com.bt.bt05.repository;

import com.bt.bt05.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, String> {
}
