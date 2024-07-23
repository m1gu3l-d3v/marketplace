package com.groupproyect.marketplace.model.cite;

import java.util.List;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "departments")
@Getter
@Setter
public class Department extends BaseModel {
  private String name;

  // Referenced Table
  // Table: districts
  @OneToMany(mappedBy="department", fetch = FetchType.LAZY)
  private List<District> districts;
}