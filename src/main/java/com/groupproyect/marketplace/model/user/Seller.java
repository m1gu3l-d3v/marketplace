package com.groupproyect.marketplace.model.user;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "sellers")
@Getter
@Setter
public class Seller extends BaseUser {
  // private Long idStore; // FK
  // private Long idDirectionSeller; // FK
}