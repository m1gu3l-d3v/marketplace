package com.groupproyect.marketplace.service.cite;

import com.groupproyect.marketplace.model.cite.Department;
import com.groupproyect.marketplace.repository.cite.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {
    @Autowired
    private DepartmentRepository departmentRepository;
}
    public List<Department> allDepartments() { return departmentRepository.findAll(); }
