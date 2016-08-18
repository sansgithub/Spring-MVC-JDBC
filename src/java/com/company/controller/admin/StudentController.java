/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller.admin;

import com.company.entity.Student;
import com.company.service.StudentService;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lenovo
 */
@Controller
@RequestMapping(value = "admin/students")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap map) throws SQLException {
        map.addAttribute("students", studentService.getAll());
        return "admin/student/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {
        ModelAndView mv = new ModelAndView("admin/student/add");
        mv.addObject("Student", new Student());
        return mv;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") int id) throws SQLException {
        ModelAndView mv = new ModelAndView("admin/student/edit");
        mv.addObject("Student", studentService.getById(id));
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(HttpServletRequest req) {
        try {
            Student s = new Student();
            s.setFirstName(req.getParameter("firstName"));
            s.setLastName(req.getParameter("lastName"));
            s.setEmail(req.getParameter("email"));
            s.setGender(req.getParameter("gender"));
            s.setContactNo(req.getParameter("contactNo"));
            try {
                DateFormat dob = new SimpleDateFormat("yyyy-mm-dd");
                s.setDob(dob.parse(req.getParameter("dob")));
            } catch (ParseException pe) {
                System.out.println(pe.getMessage());
            }
            s.setStatus(req.getParameter("status") != null);
            if (req.getParameter("id") != null && req.getParameter("id").equals("0")) {
                //return s.toString();
                studentService.insert(s);
            } else {
                s.setId(Integer.parseInt(req.getParameter("id")));
                studentService.update(s);
            }
        } catch (SQLException se) {
            return se.getMessage();
        }
        return "redirect:/admin/students";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) throws SQLException {
        studentService.delete(id);

        return "redirect:/admin/students?success";
    }
}
