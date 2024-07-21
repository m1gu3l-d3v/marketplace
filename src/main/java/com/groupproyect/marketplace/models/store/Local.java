package com.groupproyect.marketplace.models.store;

import java.time.LocalTime;

import com.groupproyect.marketplace.models.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "locales")
@Getter
@Setter
public class Local extends BaseModelWithDate {
  private LocalTime openingHours;
  private LocalTime closingHours;

  // private Long idStore; // FK
  // private Long idDirection; // FK
}
