package com.groupproyect.marketplace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.delivery.DeliveryMethod;
import com.groupproyect.marketplace.model.order.Order;
import com.groupproyect.marketplace.model.purchase.Invoice;
import com.groupproyect.marketplace.model.purchase.PaymentMethod;
import com.groupproyect.marketplace.service.direction.DirectionClientService;
import com.groupproyect.marketplace.service.order.OrderProductService;
import com.groupproyect.marketplace.service.order.OrderService;

@Controller
@RequestMapping("/invoices")
public class InvoiceController {

  private final OrderService orderService;
  private final OrderProductService orderProductService;
  private final DirectionClientService directionClientService;

  public InvoiceController(
      OrderService orderService, DirectionClientService directionClientService,
      OrderProductService orderProductService) {
    this.orderService = orderService;
    this.directionClientService = directionClientService;
    this.orderProductService = orderProductService;
  }

  @GetMapping({ "/{id}", "/{id}/" })
  public String invoiceByOrder(@PathVariable("id") Long id,
      Model model, @ModelAttribute("order") Order order,
      @ModelAttribute("invoice") Invoice invoice,
      @ModelAttribute("deliveryMethod") DeliveryMethod deliveryMethod,
      @ModelAttribute("paymentMethod") PaymentMethod paymentMethod) {
    order = orderService.findById(id);
    model.addAttribute("order", order);
    model.addAttribute("direction", directionClientService.findById(id));
    model.addAttribute("productservice", orderProductService.findById(id));
    return "shop/shop-invoice.jsp";
  }
}