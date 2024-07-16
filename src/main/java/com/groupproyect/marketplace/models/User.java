package com.groupproyect.marketplace.models;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private Long id_seller; // FK
  private Long id_client; // FK
  private String firstName;
  private String lastName;
  private String email;
  private String telephoneNumber;
  private String direction;
  private String password;
  private Boolean isEnable;

  private Date createdAt;
  private Date updatedAt;

  @PrePersist
  public void onCreate() {
    this.createdAt = new Date();
  }

  @PreUpdate
  public void onUpdated() {
    this.updatedAt = new Date();
  }
}
