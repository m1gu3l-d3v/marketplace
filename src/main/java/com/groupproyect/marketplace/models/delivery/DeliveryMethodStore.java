package com.groupproyect.marketplace.models.delivery;

import com.groupproyect.marketplace.models.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "deliverys_methods_stores")
@Getter
@Setter
public class DeliveryMethodStore extends BaseModel {
  // private Long idStore; // FK
  // private Long idDeliveryMethod; // FK
}
