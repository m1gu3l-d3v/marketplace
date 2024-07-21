package com.groupproyect.marketplace.models.direction;

import com.groupproyect.marketplace.models.BaseModelWithDate;

import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
public class BaseDirection extends BaseModelWithDate {
  private String adress;

  // private Long idDistrict; // FK
}
