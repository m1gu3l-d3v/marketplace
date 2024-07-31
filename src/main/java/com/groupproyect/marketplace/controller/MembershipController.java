package com.groupproyect.marketplace.controller;

import java.time.LocalDateTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupproyect.marketplace.model.monetization.Membership;
import com.groupproyect.marketplace.model.monetization.MembershipSeller;
import com.groupproyect.marketplace.service.membership.MembershipSellerService;
import com.groupproyect.marketplace.service.membership.MembershipService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("memberships")
public class MembershipController {
  private final MembershipService membershipService;
  private final MembershipSellerService membershipSellerService;
  private final SellerService sellerService;

  public MembershipController(MembershipService membershipService, MembershipSellerService membershipSellerService,
      SellerService sellerService) {
    this.membershipService = membershipService;
    this.membershipSellerService = membershipSellerService;
    this.sellerService = sellerService;
  }

  @GetMapping({ "", "/" })
  public String memberships(Model model) {
    model.addAttribute("memberships", membershipService.findAllOrderByPriceAsc());
    return "membership/memberships.jsp";
  }

  @GetMapping({ "/{id}", "/{id}/" })
  public String confirmBuyMembership(@PathVariable("id") Long id, Model model, HttpSession httpSession,
      RedirectAttributes redirectAttributes) {
    // Process
    model.addAttribute("membership", membershipService.findById(id));
    return "membership/membership-buy.jsp";
  }

  @PostMapping({ "/{id}", "/{id}/" })
  public String buyMembership(@PathVariable("id") Long id, Model model, HttpSession httpSession,
      RedirectAttributes redirectAttributes) {
    // Validations
    if (((Long) httpSession.getAttribute("idUser")) == null) {
      System.out.println("Error 1: " + httpSession.getAttribute("idUser"));
      return "redirect:/memberships/" + id;
    }
    if (!((httpSession.getAttribute("roleUser")).equals("seller"))) {
      System.out.println("Error 2: " + httpSession.getAttribute("roleUser"));
      return "redirect:/memberships/" + id;
    }
    if (!membershipService.existsbyId(id)) {
      System.out.println("Error 3: " + membershipService.existsbyId(id));
      return "redirect:/memberships/" + id;
    }
    Long idSeller = (Long) httpSession.getAttribute("idUser");
    if (!sellerService.existsbyId(idSeller)) {
      System.out.println("Error 3: " + sellerService.existsbyId(idSeller));
      return "redirect:/memberships/" + id;
    }

    // Process
    MembershipSeller membershipSeller = new MembershipSeller();
    Membership membership = membershipService.findById(id);
    if (membershipSellerService.existsBySellerId(idSeller)) {
      LocalDateTime maxExpirationPrev = membershipSellerService.findMaxExpirationBySellerId(idSeller);
      System.out.println(maxExpirationPrev);
      membershipSeller.setActivation(maxExpirationPrev);
      membershipSeller.setExpiration(maxExpirationPrev.plusMonths(membership.getMonths()));
    } else {
      membershipSeller.setActivation(LocalDateTime.now());
      membershipSeller.setExpiration(LocalDateTime.now().plusMonths(membership.getMonths()));
    }
    membershipSeller.setSeller(sellerService.findById(idSeller));
    membershipSeller.setMembership(membership);
    membershipSellerService.save(membershipSeller);
    return "process-confirmation.jsp";
  }
}