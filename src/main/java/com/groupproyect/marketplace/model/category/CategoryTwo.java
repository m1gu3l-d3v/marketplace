package com.groupproyect.marketplace.model.category;

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

  // Referenced table
  // Table: categories_one FK
  // @ManyToOne(fetch = FetchType.LAZY)
  // @JoinColumn(name = "category_one_id")
  // private CategoryOne categoryOne;
}
