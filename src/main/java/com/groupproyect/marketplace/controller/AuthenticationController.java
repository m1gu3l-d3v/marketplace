package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupproyect.marketplace.model.user.BaseUser;
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

  @GetMapping({ "/register", "/register/" })
  public String register(@ModelAttribute("user") BaseUser user) {
    return "authentication/register.jsp";
  }

  @PostMapping("/register")
  public String register(
      @ModelAttribute("user") BaseUser user,
      @RequestParam("radio-group") String role,
      BindingResult bindingResult) {
    if (!(user.getPassword().equals(user.getConfirmPassword()))) {
      FieldError error = new FieldError("email", "email", "email");
      bindingResult.addError(error);
    }
    if ((clientService.existsByEmail(user.getEmail())) || (sellerService.existsByEmail(user.getEmail()))) {
      FieldError error = new FieldError("email", "email", "Este email ya se encuentra registrado.");
      bindingResult.addError(error);
    }
    if (bindingResult.hasErrors()) {
      return "redirect:/register";
    }
    if (role.equals("client")) {
      clientService.save(clientService.castFromBaseUser(user));
      return "redirect:/";
    } else if (role.equals("seller")) {
      sellerService.save(sellerService.castFromBaseUser(user));
      return "redirect:/store/new";
    }
    return "redirect:/register";
  }

  @GetMapping({ "/login", "/login/" })
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
