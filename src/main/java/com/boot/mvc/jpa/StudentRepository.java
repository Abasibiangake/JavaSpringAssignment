package com.boot.mvc.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer>{
	Student findByPassword(String password);
	Student findByUserName(String userName);
}
