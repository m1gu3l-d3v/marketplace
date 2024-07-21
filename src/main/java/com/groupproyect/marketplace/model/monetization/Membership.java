package com.groupproyect.marketplace.model.monetization;

import com.groupproyect.marketplace.model.BaseModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "memberships")
@Getter
@Setter
public class Membership extends BaseModel {
  private String name;
}
