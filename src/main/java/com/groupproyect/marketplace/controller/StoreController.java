package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.service.store.StoreService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;

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
    System.out.println((httpSession.getAttribute("idUser")) + (httpSession.getAttribute("idUser")).getClass().getName());
    System.out.println((httpSession.getAttribute("roleUser"))+"-----------------------------------------------------");
    if ((httpSession.getAttribute("roleUser")) == null || (httpSession.getAttribute("idUser")) == null) {
      return "redirect:/";
    }
    String roleUser = ((String) httpSession.getAttribute("roleUser"));
    Long idUser = ((Long) httpSession.getAttribute("idUser"));
    System.out.println("sakjndsakjndskasdjnksdanjsdkansdakdsa" + roleUser+ idUser);
    // if (!(sellerService.checkRole((String)
    // httpSession.getAttribute("roleUser")))) {
    // return "redirect:/";
    // }
    model.addAttribute("seller", sellerService.findById(idUser));
    return "store/new.jsp";
  }
}
