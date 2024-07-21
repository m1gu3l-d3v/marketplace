package com.groupproyect.marketplace.models.direction;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "directions_orders")
@Getter
@Setter
public class DirectionOrder extends BaseDirection {
  // private Long idOrder; // FK
}
