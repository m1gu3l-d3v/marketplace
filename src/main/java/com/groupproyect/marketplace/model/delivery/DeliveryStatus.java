package com.groupproyect.marketplace.model.delivery;

import com.groupproyect.marketplace.model.BaseModel;
import com.groupproyect.marketplace.model.order.Order;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "delivery_status")
@Getter
@Setter
public class DeliveryStatus extends BaseModel {
  private String name;

  // Referenced Table
  // Table: order FK
  @OneToOne(mappedBy="deliveryStatus", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
  private Order order;
}