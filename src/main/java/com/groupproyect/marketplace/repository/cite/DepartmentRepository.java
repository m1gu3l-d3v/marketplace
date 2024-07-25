package com.groupproyect.marketplace.repository.cite;

import com.groupproyect.marketplace.model.cite.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentRepository extends BaseCiteRepository<Department> {
    List<Department> findAllByOrderByNameAsc();
}
