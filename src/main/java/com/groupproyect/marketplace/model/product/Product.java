package com.groupproyect.marketplace.model.product;

import com.groupproyect.marketplace.model.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "products")
@Getter
@Setter
public class Product extends BaseModelWithDate {
  private String name;
  private Double price;

  // private Integer stock; // probably the attribute will not be implemented

  // private Long idStore; // FK
  // private Long idCategoryThree; // FK
}
