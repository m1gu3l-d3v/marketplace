package com.groupproyect.marketplace.service.user;

import com.groupproyect.marketplace.repository.user.BaseUserRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

public class BaseUserService<T extends IAuxBaseUser> extends BaseWithDateService<T> {
  private BaseUserRepository<T> baseUserRepository;

  public BaseUserService(BaseUserRepository<T> baseUserRepository) {
    super(baseUserRepository);
    this.baseUserRepository = baseUserRepository;
  }

  @Override
  public T save(T user) {
    return baseUserRepository.save(user);
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

  public Long findIdByEmail(String email) {
    return baseUserRepository.findByEmail(email).getId();
  }

  public boolean checkCredentials(String email, String password) {
    if (existsByEmail(email)) {
      if (findByEmail(email).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }

  public boolean checkCredentials(Long id, String password) {
    if (existsbyId(id)) {
      if (findById(id).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }
}
