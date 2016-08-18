/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.constant;

/**
 *
 * @author Lenovo
 */

public class SQLConstant {
    public final static String STUDENT_GETALL="SELECT * FROM tbl_students";
    public final static String STUDENT_GETBYID="SELECT * FROM " + TableConstant.STUDENT_TABLE + " WHERE id=?";
    public final static String STUDENT_DELETE="DELETE FROM " + TableConstant.STUDENT_TABLE + " WHERE id=?";
    public final static String STUDENT_INSERT="INSERT INTO "+ TableConstant.STUDENT_TABLE +
                               "(first_name,last_name,gender,email,contact_no,dob,status) VALUES(?,?,?,?,?,?,?)";
    public final static String STUDENT_UPDATE="UPDATE "+ TableConstant.STUDENT_TABLE +
                               " SET first_name=?,last_name=?,gender=?,email=?,contact_no=?,dob=?,status=?,modified_date=? WHERE id=?";    
}
