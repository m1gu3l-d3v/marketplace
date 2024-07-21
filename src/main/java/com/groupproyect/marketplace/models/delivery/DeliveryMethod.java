package com.groupproyect.marketplace.models.delivery;

import com.groupproyect.marketplace.models.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "delivery_methods")
@Getter
@Setter
public class DeliveryMethod extends BaseModel {
  private String name;
}
