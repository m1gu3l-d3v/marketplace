package com.groupproyect.marketplace.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupproyect.marketplace.model.user.Client;
import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.service.user.ClientService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class SessionController {
  private final ClientService clientService;
  private final SellerService sellerService;

  public SessionController(ClientService clientService, SellerService sellerService) {
    this.clientService = clientService;
    this.sellerService = sellerService;
  }

  @GetMapping("login")
  public String logIn(@ModelAttribute("client") Client client, @ModelAttribute("seller") Seller seller) {
    return "login.jsp";
  }

  @PostMapping("login")
  public String logIn(
      @RequestParam("email") String email,
      @RequestParam("password") String password,
      HttpSession httpSession) {
    Client client = clientService.findByEmail(email);
    Seller seller = sellerService.findByEmail(email);
    if (client != null) {
      httpSession.setAttribute("idUser", client.getId());
      httpSession.setAttribute("role", "client");
      return "redirect:/";
    }
    if (seller != null) {
      httpSession.setAttribute("idUser", seller.getId());
      httpSession.setAttribute("role", "seller");
      return "redirect:/";
    }
    return "redirect:/login";
  }

  @GetMapping("/logout")
  public String logOut(HttpSession httpSession) {
    httpSession.invalidate();
    return "redirect:/";
  }
}
