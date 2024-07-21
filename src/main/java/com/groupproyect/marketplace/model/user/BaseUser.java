package com.groupproyect.marketplace.model.user;

import com.groupproyect.marketplace.model.BaseModelWithDate;

import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.PrePersist;
import lombok.Getter;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
public class BaseUser extends BaseModelWithDate {
  private String firstName;
  private String lastName;
  private String email;
  private String telephoneNumber;
  private String password;
  private Boolean isEnable;

  // private Long idSeller; // FK
  // private Long idClient; // FK

  @PrePersist
  public void setEnable() {
    this.isEnable = true;
  }
}
