package com.groupproyect.marketplace.service.membership;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.monetization.MembershipSeller;
import com.groupproyect.marketplace.repository.membership.MembershipSellerRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

@Service
public class MembershipSellerService extends BaseWithDateService<MembershipSeller> {
  @SuppressWarnings("unused")
  private final MembershipSellerRepository membershipSellerRepository;

  public MembershipSellerService(MembershipSellerRepository membershipSellerRepository) {
    super(membershipSellerRepository);
    this.membershipSellerRepository = membershipSellerRepository;
  }

}
