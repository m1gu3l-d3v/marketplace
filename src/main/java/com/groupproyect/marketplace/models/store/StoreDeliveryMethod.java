package com.groupproyect.marketplace.models.store;

import com.groupproyect.marketplace.models.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "stores_deliverys_methods")
@Getter
@Setter
public class StoreDeliveryMethod extends BaseModelWithDate {
  // private Long idStore; // FK
  // private Long idDeliveryMethod; // FK
}
