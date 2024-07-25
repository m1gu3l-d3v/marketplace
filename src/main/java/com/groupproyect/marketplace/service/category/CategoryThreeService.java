package com.groupproyect.marketplace.service.category;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.category.CategoryThree;
import com.groupproyect.marketplace.repository.categorie.CategoryThreeRepository;

@Service
public class CategoryThreeService extends BaseCategoryService<CategoryThree>{
  @SuppressWarnings("unused")
  private final CategoryThreeRepository categoryThreeRepository;

  public CategoryThreeService(CategoryThreeRepository categoryThreeRepository) {
    super(categoryThreeRepository);
    this.categoryThreeRepository = categoryThreeRepository;
  }
}
