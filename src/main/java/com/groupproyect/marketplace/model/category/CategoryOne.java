package com.groupproyect.marketplace.model.category;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "categories_one")
@Getter
@Setter
public class CategoryOne extends BaseCategory {
  // // Referenced table
  // // Table: categories_two FK
  // @OneToMany(mappedBy = "categoryOne", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  // private List<CategoryTwo> categoryTwos;
}