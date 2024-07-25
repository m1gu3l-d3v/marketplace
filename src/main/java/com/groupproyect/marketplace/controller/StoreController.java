package com.groupproyect.marketplace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.service.store.StoreService;

@Controller
@RequestMapping("/store")
public class StoreController {
  @Autowired
  private StoreService storeService;

  @GetMapping({"/new", "/new/"})
  public String showCreateForm(Model model) {
    model.addAttribute("store", new Store());
    model.addAttribute("departments", departmentService.findAll());
    model.addAttribute("districts", districtService.findAll());
    return "store/store-form";
  }

  @PostMapping("/new")
  public String createStore(@ModelAttribute Store store) {
    storeService.save(store);
    return "redirect:/store/list";
  }
}


