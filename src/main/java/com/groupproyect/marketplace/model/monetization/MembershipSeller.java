package com.groupproyect.marketplace.model.monetization;

import java.time.LocalDateTime;

import com.groupproyect.marketplace.model.BaseModelWithDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "memberships_sellers")
@Getter
@Setter
public class MembershipSeller extends BaseModelWithDate {
  private LocalDateTime activation;
  private LocalDateTime expiration;

  // private Long idSeller; // FK
  // private Long idMembership; // FK
}
