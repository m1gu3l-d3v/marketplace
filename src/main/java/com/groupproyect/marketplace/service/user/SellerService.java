package com.groupproyect.marketplace.service.user;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.repository.user.SellerRepository;

@Service
public class SellerService extends BaseUserService<Seller> {
  @SuppressWarnings("unused")
  private final SellerRepository sellerRepository;

  public SellerService(SellerRepository sellerRepository) {
    super(sellerRepository);
    this.sellerRepository = sellerRepository;
  }

  public boolean checkCredentials(String email, String password) {
    if (existsByEmail(email)) {
      if (findByEmail(email).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }
}
