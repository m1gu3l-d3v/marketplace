package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.product.ProductService;

@Controller
@RequestMapping("/shop")
public class ShopController {
  private final ProductService productService;
  
  public ShopController(ProductService productService) {
    this.productService = productService;
  }

  @GetMapping({"/cart", "/cart/"})
  public String cart(Model model) {
    model.addAttribute("products", productService.findAll());
    return "shop/shop-cart.jsp";
  }
}
