package com.groupproyect.marketplace.repository.user;

import com.groupproyect.marketplace.model.user.Seller;

public interface SellerRepository extends BaseUserRepository<Seller> {
  public boolean existsByEmail(String email);
  public Seller findByEmail(String email);
  Long getIdByEmail(String email);
}
