package com.example.demo.trySpring;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.database.EmployeeEntity;

@Repository
public interface  HelloRepository extends JpaRepository<EmployeeEntity, Integer>{

	//EmployeeEntity findByEmployeeId(int id);
	EmployeeEntity findByEmployeeId(int employeeId);
	
}