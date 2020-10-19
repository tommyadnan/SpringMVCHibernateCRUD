package com.bootcamp.controller;

import com.bootcamp.model.Department;
import com.bootcamp.service.DepartmentService;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "department")
public class DepartmentController {
    public static final Logger logger = Logger.getLogger(DepartmentController.class);

    public DepartmentController(){
        System.out.println("Department Controller");
    }

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping(value = "")
    public ModelAndView ListDepartment(ModelAndView model) throws IOException{
        List<Department> listDepartment= departmentService.getAllDepartments();
        model.addObject("listdepartment",listDepartment);
        model.setViewName("List");
        return model;
    }

    @RequestMapping(value = "newDepartment", method = RequestMethod.GET)
    public ModelAndView newDepartment(ModelAndView model){
        Department department = new Department();
        model.addObject("department",department);
        model.setViewName("Form");
        return model;
    }

    @RequestMapping(value = "saveDepartment", method = RequestMethod.POST)
    public ModelAndView saveDepartment(Department department){
        if(department.getId()==0){
            departmentService.addDepartment(department);
        }else{
            departmentService.updateDepartment(department);
        }
        return new ModelAndView("redirect:");
    }

    @RequestMapping(value = "deleteDepartment", method = RequestMethod.GET)
    public ModelAndView deleteDepartment(HttpServletRequest request){
        int departmentId=Integer.parseInt(request.getParameter("Id"));
        departmentService.deleteDepartment(departmentId);
        return new ModelAndView("redirect:");
    }

    @RequestMapping(value = "editDepartment", method = RequestMethod.GET)
    public ModelAndView editDepartment(HttpServletRequest request){
        int departmentId = Integer.parseInt(request.getParameter("Id"));
        Department department = departmentService.getDepartment(departmentId);
        ModelAndView model = new ModelAndView("forms/DepartmentForm");
        model.addObject("department",department);
        return model;
    }
}
