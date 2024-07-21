package com.groupproyect.marketplace.model.order;

import com.groupproyect.marketplace.model.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class Order extends BaseModelWithDate {
  // private Long idClient; // FK
  // private Long idSeller; // FK
  // private Long idDeliveryStatus; // FK
}
