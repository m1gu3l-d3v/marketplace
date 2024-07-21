package com.groupproyect.marketplace.model.valoration;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "valorations_products")
@Getter
@Setter
public class ValorationProduct extends BaseValoration {
  // private Long idProduct; // FK
}
