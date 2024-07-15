package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.Order;
import com.groupproyect.marketplace.repositories.OrderRepository;

public class OrderService extends BaseService<Order> {
  private final OrderRepository orderRepository;

  public OrderService(OrderRepository orderRepository) {
    super(orderRepository);
    this.orderRepository = orderRepository;
  }
}
