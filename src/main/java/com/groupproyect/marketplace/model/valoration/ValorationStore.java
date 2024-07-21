package com.groupproyect.marketplace.model.valoration;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "valorations_stores")
@Getter
@Setter
public class ValorationStore extends BaseValoration {
  // private Long idStore; // FK
}
