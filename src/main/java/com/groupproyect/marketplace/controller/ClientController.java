package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.user.ClientService;

@Controller
@RequestMapping("/clients")
public class ClientController {
  private final ClientService clientService;

  public ClientController(ClientService clientService) {
    this.clientService = clientService;
  }

  @GetMapping({ "/{idClient}", "/{idClient}/" })
  public String gg(@PathVariable("idClient") Long idClient, Model model) {
    model.addAttribute("client", clientService.findById(idClient));
    return "user/client-show.jsp";
  }
}
