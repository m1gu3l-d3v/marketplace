package com.groupproyect.marketplace.models.cite;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "directions_clients")
@Getter
@Setter
public class DirectionClient extends BaseDirection {
  // private Long idClient; // FK
}
