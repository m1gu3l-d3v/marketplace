package com.groupproyect.marketplace.model.store;

import com.groupproyect.marketplace.model.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "stores")
@Getter
@Setter
public class Store extends BaseModelWithDate {
  private String name;
  private Boolean isEnable;

  // private Long idCategoryOne; // FK

  @PrePersist
  public void setEnable() {
    this.isEnable = true;
  }
}