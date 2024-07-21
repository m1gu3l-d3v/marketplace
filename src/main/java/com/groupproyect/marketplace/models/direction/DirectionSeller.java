package com.groupproyect.marketplace.models.direction;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "directions_sellers")
@Getter
@Setter
public class DirectionSeller extends BaseDirection {
  // private Long idSeller; // FK
}
