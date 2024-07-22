package com.groupproyect.marketplace.repository.user;

import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.repository.BaseRepository;

public interface SellerRepository extends BaseRepository<Seller> {
  public boolean existsByEmail(String email);
  public Seller findByEmail(String email);
  Long getIdByEmail(String email);
}
