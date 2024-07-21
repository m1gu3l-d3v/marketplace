package com.groupproyect.marketplace.model.purchase;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "payment_methods")
@Getter
@Setter
public class PaymentMethod extends BaseModel {
  private String name;
}
