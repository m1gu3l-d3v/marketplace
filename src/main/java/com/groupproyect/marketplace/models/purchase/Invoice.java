package com.groupproyect.marketplace.models.purchase;

import com.groupproyect.marketplace.models.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "invoices")
@Getter
@Setter
public class Invoice extends BaseModelWithDate {
  private Double iva;

  // private Long idOrder; // FK
  // private Long idPaymentMethod; // FK
}
