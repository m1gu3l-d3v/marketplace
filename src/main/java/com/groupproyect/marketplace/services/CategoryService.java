package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.categorie.BaseCategory;
import com.groupproyect.marketplace.repositories.CategoryRepository;

public class CategoryService extends BaseService<BaseCategory> {
  private final CategoryRepository categoryRepository;

  public CategoryService(CategoryRepository categoryRepository) {
    super(categoryRepository);
    this.categoryRepository = categoryRepository;
  }
}
