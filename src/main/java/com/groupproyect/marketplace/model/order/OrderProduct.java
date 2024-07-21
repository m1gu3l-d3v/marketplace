package com.groupproyect.marketplace.model.order;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "orders_products")
@Getter
@Setter
public class OrderProduct extends BaseModel {
  private Integer amount;

  // private Long idOrder; // FK
  // private Long idProduct; // FK
}
