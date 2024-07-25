package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.product.Product;
import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.service.product.ProductService;
import com.groupproyect.marketplace.service.store.StoreService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/products")
public class ProductController {
  private final ProductService productService;
  private final StoreService storeService;
  private final SellerService sellerService;

  public ProductController(ProductService productService, StoreService storeService, SellerService sellerService) {
    this.productService = productService;
    this.storeService = storeService;
    this.sellerService = sellerService;
  }

  @GetMapping("")
  public String product(@ModelAttribute("product") Product product, Model model) {
    model.addAttribute("productos", productService.findAll());
    return "/product/products.jsp";
  }

  @GetMapping({ "/new", "/new/" })
  public String newproduct(
      @ModelAttribute("product") Product product,
      @ModelAttribute("store") Store store, HttpSession httpSession, Model model) {
    model.addAttribute("store", 1);
    return "/product/product-new.jsp";
  }

  @PostMapping("new")
  public String newproduct(
      @Valid @ModelAttribute("product") Product product, BindingResult result, Model model,
      HttpSession httpSession) {
    System.out.println((httpSession.getAttribute("roleUser")).toString());
    // Verificacion Si es Seller
    if ((httpSession.getAttribute("roleUser")).toString() != "seller") {
      return "redirect:/login";
    }
    if (result.hasErrors()) {
      return "product-new.jsp";
    }
    Store store = storeService.findBySeller(sellerService.findById((Long) httpSession.getAttribute("idUser")));
    product.setStore(store);
    productService.save(product);
    httpSession.setAttribute("roleUser", "seller");
    return "redirect:/products";

  }
}
