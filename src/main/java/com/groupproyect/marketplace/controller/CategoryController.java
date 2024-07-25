package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.category.CategoryOneService;
import com.groupproyect.marketplace.service.category.CategoryThreeService;
import com.groupproyect.marketplace.service.category.CategoryTwoService;

@Controller
@RequestMapping("/categories")
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

  @GetMapping("")
  public String getCategories(Model model) {
    model.addAttribute("categoriesOnes", categoryOneService.findAll());
    model.addAttribute("categoriesTwos", categoryTwoService.findAll());
    model.addAttribute("categoriesThrees", categoryThreeService.findAll());

    return "categories/categories.jsp";
  }
}