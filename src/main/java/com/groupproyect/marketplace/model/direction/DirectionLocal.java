package com.groupproyect.marketplace.model.direction;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "directions_locales")
@Getter
@Setter
public class DirectionLocal extends BaseDirection {
  // private Long idLocal; // FK
  // private Long idDistrict; // FK
}
