package com.groupproyect.marketplace.models;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "orders")
@Getter
@Setter
public class Order {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private Long id_client; // FK
  private Long id_seller; // FK
  private Long id_delivery_method; // FK
  private Long id_payment_method; // FK
  private List<Product> id_products; // FK
}
