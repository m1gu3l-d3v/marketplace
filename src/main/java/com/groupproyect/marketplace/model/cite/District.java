package com.groupproyect.marketplace.model.cite;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "districts")
@Getter
@Setter
public class District extends BaseModel {
  private String name;

  // private Long idDepartment; // FK
}
