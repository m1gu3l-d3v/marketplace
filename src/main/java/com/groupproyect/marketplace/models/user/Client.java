package com.groupproyect.marketplace.models.user;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "clients")
@Getter
@Setter
public class Client extends BaseUser {
  // private Long idDirectionClient; // FK
}
