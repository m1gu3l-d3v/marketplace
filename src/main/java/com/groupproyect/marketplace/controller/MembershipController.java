package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.service.membership.MembershipService;

@Controller
@RequestMapping("memberships")
public class MembershipController {
  private final MembershipService membershipService;

  public MembershipController(MembershipService membershipService) {
    this.membershipService = membershipService;
  }

  @GetMapping({ "", "/" })
  public String memberships(Model model) {
    model.addAttribute("memberships", membershipService.findAllOrderByPriceAsc());
    return "membership/memberships.jsp";
  }
}