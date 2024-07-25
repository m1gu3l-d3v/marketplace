package com.groupproyect.marketplace.repository.cite;

import com.groupproyect.marketplace.model.cite.Department;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentRepository extends CrudRepository<Department, Long> {
    List<Department> findAll();
}
