package com.groupproyect.marketplace.repository.user;

import org.springframework.data.repository.NoRepositoryBean;

import com.groupproyect.marketplace.repository.BaseWithDateRepository;

@NoRepositoryBean
public interface BaseUserRepository<T> extends BaseWithDateRepository<T> {
  public boolean existsByEmail(String email);
  public T findByEmail(String email);
  Long getIdByEmail(String email);
}
