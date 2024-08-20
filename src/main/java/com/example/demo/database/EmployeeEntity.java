package com.example.demo.database;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "employee") 
public class EmployeeEntity {
	@Id
    private int employeeId; //従業員ID
    private String employeeName; //従業員名
    private int age; //年齢
}
