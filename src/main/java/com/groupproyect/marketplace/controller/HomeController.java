package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.category.CategoryOneService;
import com.groupproyect.marketplace.service.product.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class HomeController {
  private final ProductService productService;
  private final CategoryOneService categoryOneService;

  public  HomeController(ProductService productService, CategoryOneService categoryOneService) {
    this.productService = productService;
    this.categoryOneService = categoryOneService;
  }

  @GetMapping({ "", "/", "/index", "/index/", "/home", "/home/" })
  public String home(HttpSession httpSession, Model model) {
    Long idUser = (Long) httpSession.getAttribute("idUser");
    model.addAttribute("categoriesOne", categoryOneService.findAll());
    model.addAttribute("user", idUser);
    return "index.jsp";
  }
}
