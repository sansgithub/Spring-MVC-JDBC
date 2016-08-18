/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.impl;

import com.company.dao.StudentDAO;
import com.company.entity.Student;
import com.company.service.StudentService;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Lenovo
 */
@Service(value = "StudentService")
public class StudentServiceImpl implements StudentService {
    
    @Autowired
    private StudentDAO studentDAO;
    
    @Override
    public List<Student> getAll() throws SQLException {
        return studentDAO.getAll();
    }

    @Override
    public Student getById(int id) throws SQLException {
        return studentDAO.getById(id);
    }

    @Override
    public int insert(Student s) throws SQLException {
        return studentDAO.insert(s);
    }

    @Override
    public int update(Student s) throws SQLException {
        return studentDAO.update(s);
    }

    @Override
    public int delete(int id) throws SQLException {
        return studentDAO.delete(id);
    }
    
}
