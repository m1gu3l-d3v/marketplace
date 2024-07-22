package com.groupproyect.marketplace.model.delivery;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "delivery_status")
@Getter
@Setter
public class DeliveryStatus extends BaseModel {
  private String name;
}