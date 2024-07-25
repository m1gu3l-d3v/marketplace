package com.groupproyect.marketplace.service.cite;

import com.groupproyect.marketplace.model.cite.Department;
import com.groupproyect.marketplace.repository.cite.DepartmentRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {
  private DepartmentRepository departmentRepository;

  public DepartmentService(DepartmentRepository departmentRepository) {
    this.departmentRepository = departmentRepository;
  }

  public List<Department> getAllDepartments() {
    return departmentRepository.findAll();
  }

  public List<Department> getAllDepartmentsSortedByName() {
    return departmentRepository.findAllByOrderByNameAsc();
  }
}
