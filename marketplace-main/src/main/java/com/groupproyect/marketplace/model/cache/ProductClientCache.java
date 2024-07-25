package com.groupproyect.marketplace.model.cache;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "products_clients_cache")
@Getter
@Setter
public class ProductClientCache extends BaseModel {
  private Integer amount;
  // private Long idClient; // FK
  // private Long idProduct; // FK
}
