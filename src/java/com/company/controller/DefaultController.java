/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Lenovo
 */
@Controller
@RequestMapping(value = "/")
public class DefaultController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "index";
    }
    
    @RequestMapping(value="/about" , method = RequestMethod.GET)
    public String about(){
        return "about";
    }
    
    @RequestMapping(value="/contact" , method = RequestMethod.GET)
    public String contact(){
        return "contact";
    }
    
    @RequestMapping(value="/portfolio" , method = RequestMethod.GET)
    public String portoflio(){
        return "portfolio";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String login(){
        return "login";
    }
    
    @RequestMapping(value="/signin", method=RequestMethod.GET)
    public String signin(){
        return "signin";
    }
}
