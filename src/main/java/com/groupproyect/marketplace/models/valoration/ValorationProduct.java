package com.groupproyect.marketplace.models.valoration;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "valorations_products")
@Getter
@Setter
public class ValorationProduct extends Valoration {
  // private Long idProduct; // FK
}
