package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.user.SellerService;

@Controller
@RequestMapping("/sellers")
public class SellerController {
  private final SellerService sellerService;

  public SellerController(SellerService sellerService) {
    this.sellerService = sellerService;
  }

  @GetMapping({"/{idSeller}", "/{idSeller}/"})
  public String gg(@PathVariable("idSeller") Long idSeller, Model model) {
    model.addAttribute("seller", sellerService.findById(idSeller));
    return "user/seller-show.jsp";
  }
}
