package com.groupproyect.marketplace.models.categorie;

import com.groupproyect.marketplace.models.BaseModel;

import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
public class BaseCategory extends BaseModel {
  private String name;
}