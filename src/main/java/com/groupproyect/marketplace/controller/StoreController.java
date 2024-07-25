package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.service.store.StoreService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/stores")
public class StoreController {
  private final SellerService sellerService;
  private final StoreService storeService;

  public StoreController(StoreService storeService, SellerService sellerService) {
    this.storeService = storeService;
    this.sellerService = sellerService;
  }

  @GetMapping({ "/new", "/new/" })
  public String newStore(@ModelAttribute("store") Store store, Model model, HttpSession httpSession) {
    // if ((httpSession.getAttribute("roleUser")) != "seller" || (httpSession.getAttribute("idUser")) == null) {
    //   return "redirect:/login";
    // }
    if (httpSession.getAttribute("idUser") == null) {
      return "redirect:/login";
    }
    Long idUser = ((Long) httpSession.getAttribute("idUser"));
    model.addAttribute("seller", sellerService.findById(idUser));
    return "store/store-new.jsp";
  }

  @PostMapping({ "/new" })
  public String createStore(@Valid @ModelAttribute("store") Store store, BindingResult result, HttpSession httpSession,
      @RequestParam("sellerId") Long sellerId) {
    System.out.println((httpSession.getAttribute("roleUser")).toString());
    // Verificacion Si es Seller
    if ((httpSession.getAttribute("roleUser")).toString() != "seller") {
      return "redirect:/login";
    }
    if (result.hasErrors()) {
      return "product-new.jsp";
    }
    Seller seller = sellerService.findById(sellerId);
    seller.setStore(store);
    storeService.save(store);
    sellerService.save(seller);
    httpSession.setAttribute("roleUser", "seller");
    return "redirect:/store/";
  }
}
