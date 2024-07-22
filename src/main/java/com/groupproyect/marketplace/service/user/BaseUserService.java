package com.groupproyect.marketplace.service.user;

import com.groupproyect.marketplace.repository.user.BaseUserRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

public class BaseUserService<T> extends BaseWithDateService<T> {
  @SuppressWarnings("unused")
  private BaseUserRepository<T> baseUserRepository;

  public BaseUserService(BaseUserRepository<T> baseUserRepository) {
    super(baseUserRepository);
    this.baseUserRepository = baseUserRepository;
  }

  public boolean existsByEmail(String email) {
    return baseUserRepository.existsByEmail(email);
  }

  public T findByEmail(String email) {
    if (existsByEmail(email)) {
      return baseUserRepository.findByEmail(email);
    } else {
      return null;
    }
  }

  public Long getIdByEmail(String email) {
    return baseUserRepository.getIdByEmail(email);
  }
}
