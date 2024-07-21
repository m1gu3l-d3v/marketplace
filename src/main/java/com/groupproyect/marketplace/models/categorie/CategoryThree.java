package com.groupproyect.marketplace.models.categorie;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "categories_three")
@Getter
@Setter
public class CategoryThree extends BaseCategory {
  // private Long idCategoryTwo; // FK
}
