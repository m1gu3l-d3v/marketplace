package com.groupproyect.marketplace.service.category;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.category.CategoryTwo;
import com.groupproyect.marketplace.repository.categorie.CategoryTwoRepository;

@Service
public class CategoryTwoService extends BaseCategoryService<CategoryTwo> {
  @SuppressWarnings("unused")
  private final CategoryTwoRepository categoryTwoRepository;

  public CategoryTwoService(CategoryTwoRepository categoryTwoRepository) {
    super(categoryTwoRepository);
    this.categoryTwoRepository = categoryTwoRepository;
  }
}
