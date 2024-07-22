package com.groupproyect.marketplace.service.user;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.repository.user.SellerRepository;
import com.groupproyect.marketplace.service.BaseService;

@Service
public class SellerService extends BaseService<Seller> {
  private final SellerRepository sellerRepository;

  public SellerService(SellerRepository sellerRepository) {
    super(sellerRepository);
    this.sellerRepository = sellerRepository;
  }

  public boolean existsByEmail(String email) {
    return sellerRepository.existsByEmail(email);
  }

  public Seller findByEmail(String email) {
    if (existsByEmail(email)) {
      return sellerRepository.findByEmail(email);
    } else {
      return null;
    }
  }

  public boolean checkCredentials(String email, String password) {
    if (existsByEmail(email)) {
      if (findByEmail(email).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }

  public Long getIdByEmail(String email) {
    return sellerRepository.getIdByEmail(email);
  }
}
