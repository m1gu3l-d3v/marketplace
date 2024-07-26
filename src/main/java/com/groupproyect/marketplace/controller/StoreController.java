package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.service.category.CategoryOneService;
import com.groupproyect.marketplace.service.cite.DepartmentService;
import com.groupproyect.marketplace.service.cite.DistrictService;
import com.groupproyect.marketplace.service.store.StoreService;
import com.groupproyect.marketplace.service.user.SellerService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/stores")
public class StoreController {
  private final SellerService sellerService;
  private final StoreService storeService;
  private final DepartmentService departmentService;
  private final DistrictService districtService;
  private final CategoryOneService categoryOneService;

  public StoreController(StoreService storeService, SellerService sellerService, DepartmentService departmentService,
      DistrictService districtService, CategoryOneService categoryOneService) {
    this.storeService = storeService;
    this.sellerService = sellerService;
    this.departmentService = departmentService;
    this.districtService = districtService;
    this.categoryOneService = categoryOneService;
  }

  @GetMapping({ "/new", "/new/" })
  public String newStore(@ModelAttribute("store") Store store, Model model, HttpSession httpSession) {
    Long idUser = ((Long) httpSession.getAttribute("idUser"));
    model.addAttribute("seller", sellerService.findById(idUser));
    model.addAttribute("store", new Store());
    model.addAttribute("departments", departmentService.findAllByOrderByNameAsc());
    model.addAttribute("districts", districtService.findAll());
    model.addAttribute("categoriesOnes", categoryOneService.findAll());
    return "store/store-new.jsp";
  }

  @GetMapping({ "/{id}", "/{id}/" })
  public String showStore(@PathVariable("id") Long id, Model model) {
    model.addAttribute("store", storeService.findById(id));
    model.addAttribute("seller", sellerService.findByStoreId(id));
    return "store/store-show.jsp";
  }

  @PostMapping({ "/new" })
  public String createStore(@Valid @ModelAttribute("store") Store store, BindingResult result, HttpSession httpSession,
      RedirectAttributes redirectAttributes, @RequestParam("password") String password,
      @RequestParam("direction") String direction, @RequestParam("idDistrict") Long idDistrict,
      @RequestParam("categoryOne") Long idCategoryOne) {
    if (((String) httpSession.getAttribute("roleUser")) != "seller"
        || ((Long) httpSession.getAttribute("idUser")) == null) {
      redirectAttributes.addFlashAttribute("roleError",
          "Solo los vendedores pueden registar su tienda, puedes crear otra cuenta.");
      return "redirect:/stores/new";
    }
    Long idSeller = ((Long) httpSession.getAttribute("idUser"));
    if (!sellerService.checkCredentials(idSeller, password)) {
      redirectAttributes.addFlashAttribute("passwordError", "La contraseña es invalida.");
      return "redirect:/stores/new";
    }
    if (result.hasErrors()) {
      return "redirect:/login";
    }
    Seller seller = sellerService.findById(idSeller);
    store.setCategoryOne(categoryOneService.findById(idCategoryOne));
    seller.setStore(store);
    Long idStore = storeService.save(store).getId();
    sellerService.save(seller);
    return "redirect:/stores/" + idStore;
  }
}
