/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.entity.Student;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public interface StudentService {
    List<Student> getAll() throws SQLException;
    Student getById(int id)throws SQLException;
    int insert(Student s)throws SQLException;
    int update(Student s)throws SQLException;
    int delete(int id)throws SQLException;    
}
