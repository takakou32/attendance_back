package com.example.demo.trySpring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.database.EmployeeEntity;

@Service
public class HelloService {

    @Autowired
    private HelloRepository helloRepository;

    public EmployeeEntity getOneEmployee(int id) {

        // １件検索実行
    	//EmployeeEntity employee = helloRepository.findByEmployeeId(id);
    	EmployeeEntity employee = helloRepository.findByEmployeeId(id);
        // Mapから値を取得
        //int employeeId = (Integer) map.get("employee_id");
        //String employeeName = (String) map.get("employee_name");
        //int age = (Integer) map.get("age");

        // Employeeクラスに値をセット
        //Employee employee = new Employee();
        //employee.setEmployeeId(employeeId);
        //employee.setEmployeeName(employeeName);
        //employee.setAge(age);

        return employee;
    }
}
