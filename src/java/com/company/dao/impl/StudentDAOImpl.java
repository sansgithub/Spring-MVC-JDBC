/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.dao.impl;

import com.company.constant.SQLConstant;
import com.company.dao.StudentDAO;
import com.company.entity.Student;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lenovo
 */
@Repository(value = "StudentDAO")
public class StudentDAOImpl implements StudentDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Student> getAll() throws SQLException {
        String sql="SELECT * FROM tbl_students";
        return jdbcTemplate.query(sql,new RowMapper<Student>() {

            @Override
            public Student mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }

    @Override
    public Student getById(int id) throws SQLException {
        return jdbcTemplate.queryForObject(SQLConstant.STUDENT_GETBYID, new Object[]{id},new RowMapper<Student>() {

            @Override
            public Student mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }
    
    private Student mapData(ResultSet rs) throws SQLException{
        Student student=new Student();
        student.setId(rs.getInt("id"));
        student.setFirstName(rs.getString("first_name"));
        student.setLastName(rs.getString("last_name"));
        student.setEmail(rs.getString("email"));
        student.setContactNo(rs.getString("contact_no"));
        student.setGender(rs.getString("gender"));
        student.setDob(rs.getDate("dob"));
        student.setStatus(rs.getBoolean("status"));
        student.setAddedDate(rs.getDate("added_date"));
        student.setModifedDate(rs.getDate("modified_date"));
        student.setDeletedDate(rs.getDate("delete_date"));
        student.setDeleteIP(rs.getString("delete_ip"));
        return student;        
    }

    @Override
    public int insert(Student s) throws SQLException {
        return jdbcTemplate.update(SQLConstant.STUDENT_INSERT, new Object[]{s.getFirstName(),s.getLastName(),s.getGender(),s.getEmail(),s.getContactNo(),s.getDob(),s.isStatus()});
    }

    @Override
    public int update(Student s) throws SQLException {
        return jdbcTemplate.update(SQLConstant.STUDENT_UPDATE, new Object[]{s.getFirstName(),s.getLastName(),s.getGender(),s.getEmail(),s.getContactNo(),s.getDob(),s.isStatus(),s.getModifedDate(),s.getId()});
    }

    @Override
    public int delete(int id) throws SQLException {
        return jdbcTemplate.update(SQLConstant.STUDENT_DELETE, new Object[]{id});
    }
    
}
