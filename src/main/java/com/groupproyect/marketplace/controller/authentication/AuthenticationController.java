package com.groupproyect.marketplace.controller.authentication;

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
public class AuthenticationController {
  private final ClientService clientService;
  private final SellerService sellerService;

  public AuthenticationController(ClientService clientService, SellerService sellerService) {
    this.clientService = clientService;
    this.sellerService = sellerService;
  }

  @GetMapping({"/register", "/register/"})
  public String registerSelectRol() {
    return "authentication/register/index.jsp";
  }

  @GetMapping({"/register/client", "/register/client/"})
  public String registerClient(@ModelAttribute("client") Client client) {
    return "authentication/register/client.jsp";
  }

  @GetMapping({"/register/seller", "/register/seller/"})
  public String registerSeller(@ModelAttribute("seller") Seller seller) {
    return "authentication/register/seller.jsp";
  }

  @GetMapping("/login")
  public String logIn() {
    return "authentication/login.jsp";
  }

  @GetMapping("/logout")
  public String logOut(HttpSession httpSession) {
    httpSession.invalidate();
    return "redirect:/";
  }

  @PostMapping("/login")
  public String logIn(
      @RequestParam("email") String email,
      @RequestParam("password") String password,
      HttpSession httpSession) {
    if (clientService.checkCredentials(email, password)) {
      httpSession.setAttribute("idUser", clientService.getIdByEmail(email));
      httpSession.setAttribute("role", "client");
      return "redirect:/";
    }
    if (sellerService.checkCredentials(email, password)) {
      httpSession.setAttribute("idUser", sellerService.getIdByEmail(email));
      httpSession.setAttribute("role", "seller");
      return "redirect:/";
    }
    return "redirect:/login";
  }
}
