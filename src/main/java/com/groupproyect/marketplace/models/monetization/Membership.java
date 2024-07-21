package com.groupproyect.marketplace.models.user;

import com.groupproyect.marketplace.models.BaseModel;

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
