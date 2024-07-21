package com.groupproyect.marketplace.models.valoration;

import com.groupproyect.marketplace.models.BaseModelWithDate;

import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
public class Valoration extends BaseModelWithDate {
  private Integer stars;
  private String review;
}
