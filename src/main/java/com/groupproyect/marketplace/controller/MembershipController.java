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

  public MembershipController(MembershipService membershipService, MembershipSellerService membershipSellerService, SellerService sellerService) {
    this.membershipService = membershipService;
    this.membershipSellerService = membershipSellerService;
    this.sellerService = sellerService;
  }

  @GetMapping({ "", "/" })
  public String memberships(Model model) {
    model.addAttribute("memberships", membershipService.findAllOrderByPriceAsc());
    return "membership/memberships.jsp";
  }

  @PostMapping({ "/{id}", "/{id}/" })
  public String buyMembership(@PathVariable("id") Long id, Model model, HttpSession httpSession,
      RedirectAttributes redirectAttributes) {
    if (((Long) httpSession.getAttribute("idUser")) == null) {
      redirectAttributes.addFlashAttribute("userError", "No estas logeado.");
      return "redirect:/memberships";
    }
    if (((String) httpSession.getAttribute("roleUser")) != "seller") {
      redirectAttributes.addFlashAttribute("roleError",
          "Solo los vendedores pueden necesitar la membresía, para q la querrias? :0.");
      return "redirect:/stores/new";
    }
    if (!membershipService.existsbyId(id)) {
      return "redirect:/memberships";
    }
    Long idSeller = (Long) httpSession.getAttribute("idUser");
    if (!sellerService.existsbyId(id)) {
      return "redirect:/memberships";
    }
    // Falta metodos de pago previo al seteo de esto, se debe dividir en 2 metodos
    MembershipSeller membershipSeller = new MembershipSeller();
    Membership membership = membershipService.findById(id);
    membershipSeller.setSeller(sellerService.findById(idSeller));;
    membershipSeller.setMembership(membership);
    membershipSeller.setActivation(LocalDateTime.now());
    membershipSeller.setExpiration(LocalDateTime.now().plusMonths(membership.getMonths()));
    membershipSellerService.save(membershipSeller);
    return "membership/memberships.jsp";
  }
}