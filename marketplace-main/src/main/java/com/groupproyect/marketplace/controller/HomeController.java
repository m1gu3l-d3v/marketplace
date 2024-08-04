package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupproyect.marketplace.model.cache.ProductClientCache;
import com.groupproyect.marketplace.service.cache.ProductClientCacheService;
import com.groupproyect.marketplace.service.category.CategoryOneService;
import com.groupproyect.marketplace.service.product.ProductService;
import com.groupproyect.marketplace.service.user.ClientService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class HomeController {
  @SuppressWarnings("unused")
  private final ProductService productService;
  private final CategoryOneService categoryOneService;
  private final ClientService clientService;

  public  HomeController(ProductService productService, CategoryOneService categoryOneService, ClientService clientService) {
    this.productService = productService;
    this.categoryOneService = categoryOneService;
    this.clientService = clientService;
  }

  @GetMapping({ "", "/", "/index", "/index/", "/home", "/home/" })
  public String home(HttpSession httpSession, Model model) {
    Long idUser = (Long) httpSession.getAttribute("idUser");
    model.addAttribute("categoriesOne", categoryOneService.findAll());
    model.addAttribute("user", idUser);
    return "index.jsp";
  }
}
