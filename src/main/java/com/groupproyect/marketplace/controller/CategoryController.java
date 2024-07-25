package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.groupproyect.marketplace.service.category.CategoryOneService;
import com.groupproyect.marketplace.service.category.CategoryThreeService;
import com.groupproyect.marketplace.service.category.CategoryTwoService;

@Controller
public class CategoryController {
  private final CategoryOneService categoryOneService;
  private final CategoryTwoService categoryTwoService;
  private final CategoryThreeService categoryThreeService;

  public CategoryController(CategoryOneService categoryOneService, CategoryTwoService categoryTwoService,
      CategoryThreeService categoryThreeService) {
    this.categoryOneService = categoryOneService;
    this.categoryTwoService = categoryTwoService;
    this.categoryThreeService = categoryThreeService;
  }

@GetMapping("/categories")
public String getCategories(Model model) {
    var categoriesOnes = categoryOneService.findAll();
    var categoriesTwos = categoryTwoService.findAll();
    var categoriesThrees = categoryThreeService.findAll();
    
    // Log the data
    System.out.println("Categories One: " + categoriesOnes);
    System.out.println("Categories Two: " + categoriesTwos);
    System.out.println("Categories Three: " + categoriesThrees);

    model.addAttribute("categoriesOnes", categoriesOnes);
    model.addAttribute("categoriesTwos", categoriesTwos);
    model.addAttribute("categoriesThrees", categoriesThrees);

    return "categories/categories.jsp";
}
}