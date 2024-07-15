package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.Category;
import com.groupproyect.marketplace.repositories.CategoryRepository;

public class CategoryService extends BaseService<Category> {
  private final CategoryRepository categoryRepository;

  public CategoryService(CategoryRepository categoryRepository) {
    super(categoryRepository);
    this.categoryRepository = categoryRepository;
  }
}
