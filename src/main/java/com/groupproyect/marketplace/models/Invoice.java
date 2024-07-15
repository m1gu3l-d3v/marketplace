package com.groupproyect.marketplace.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "invoices")
@Getter
@Setter
public class Invoice {
  private Long id;
  private Long id_order; // FK
  private Long id_delivery_method; // FK
  private Long id_payment_method; // FK
  private Double iva;
}
