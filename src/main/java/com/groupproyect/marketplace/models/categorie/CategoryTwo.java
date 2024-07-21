package com.groupproyect.marketplace.models.categorie;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "categories_two")
@Getter
@Setter
public class CategoryTwo extends BaseCategory {
  // private Long idCategoryOne; // FK
}
