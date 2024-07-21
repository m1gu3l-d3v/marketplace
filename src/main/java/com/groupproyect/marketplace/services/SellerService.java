package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.user.Seller;
import com.groupproyect.marketplace.repositories.SellerRepository;

public class SellerService extends BaseService<Seller> {
  private final SellerRepository sellerRepository;

  public SellerService(SellerRepository sellerRepository) {
    super(sellerRepository);
    this.sellerRepository = sellerRepository;
  }
}
