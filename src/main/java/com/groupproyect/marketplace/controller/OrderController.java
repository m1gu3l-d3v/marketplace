package com.groupproyect.marketplace.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupproyect.marketplace.model.order.Order;
import com.groupproyect.marketplace.service.order.OrderService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/orders")
public class OrderController {
  private final OrderService orderService;

  public OrderController(OrderService orderService) {
    this.orderService = orderService;
  }

  @GetMapping({"", "/"})
  public String getUserOrders(Model model, HttpSession session) {
    Long clientId = (Long) session.getAttribute("idUser");

    if (clientId == null) {
      return "redirect:/login";
    }

    List<Order> orders = orderService.findByClientId(clientId);
    model.addAttribute("orders", orders);
    return "order/list.jsp";
  }

  @GetMapping({"/{id}", "/{id}/"})
  public String getOrderDetails(@PathVariable("id") Long id, Model model) {
    Order order = orderService.findById(id);
    model.addAttribute("order", order);
    return "order/details.jsp";
  }
}
