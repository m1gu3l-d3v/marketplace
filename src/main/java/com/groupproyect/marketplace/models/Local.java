package com.groupproyect.marketplace.models;

import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "locales")
@Getter
@Setter
public class Local {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private Long idStorage;
  private Long location;
  private LocalTime scheduleOpen;
  private LocalTime scheduleClose;
}
