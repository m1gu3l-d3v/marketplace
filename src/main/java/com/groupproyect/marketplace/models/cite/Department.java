package com.groupproyect.marketplace.models.cite;

import com.groupproyect.marketplace.models.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "departments")
@Getter
@Setter
public class Department extends BaseModel {
  private String name;
}
