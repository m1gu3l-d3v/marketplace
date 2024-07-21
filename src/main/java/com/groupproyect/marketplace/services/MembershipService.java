package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.monetization.Membership;
import com.groupproyect.marketplace.repositories.MembershipRepository;

public class MembershipService extends BaseService<Membership> {
  private final MembershipRepository membershipRepository;

  public MembershipService(MembershipRepository membershipRepository) {
    super(membershipRepository);
    this.membershipRepository = membershipRepository;
  }
}
