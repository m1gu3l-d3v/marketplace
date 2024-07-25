package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.product.Product;
import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.service.product.ProductService;
import com.groupproyect.marketplace.service.store.StoreService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;




@Controller
@RequestMapping("/products")
public class ProductController {
    


    private final ProductService productService;
    private final StoreService storeService;

    public ProductController(ProductService productService, StoreService storeService){
        this.productService = productService;
        this.storeService = storeService;
    }


    @GetMapping("")
    public String product( @ModelAttribute("product") Product product, Model model) {

        model.addAttribute("productos", productService.findAll());

        return "products.jsp";

    }
    

    @GetMapping("new")
    public String newproduct(
        @ModelAttribute("product") Product product, 
        @ModelAttribute("store") Store store, HttpSession httpSession, Model model) {

        Long storeId= (Long) httpSession.getAttribute("storeId");
        model.addAttribute("store", storeService.findById(storeId));

        return "productnew.jsp";
    }
    
    
    @PostMapping("new")
    public String newproduct(
        @Valid @ModelAttribute("product") Product product, BindingResult result, Model model, HttpSession httpSession) {

            Long storeId= (Long) httpSession.getAttribute("storeId");


                if(result.hasErrors()){
                    
                    return "productnew.jsp";
                }

                else{
                    storeService.findById(storeId);
                    productService.save(product);
                    return "redirect:/products";
        
                }


        }


}
