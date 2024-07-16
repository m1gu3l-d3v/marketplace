package com.groupproyect.marketplace.services;

import java.util.Optional;

import com.groupproyect.marketplace.repositories.BaseRepository;

public class BaseService<T> {
  private final BaseRepository<T> baseRepository;

  public BaseService(BaseRepository<T> baseRepository) {
    this.baseRepository = baseRepository;
  }

  public T findById(Long id) {
    Optional<T> optionalEntity = baseRepository.findById(id);
    if (optionalEntity.isPresent()) {
      return baseRepository.findById(id).get();
    } else {
      return null;
    }
  }

  public void update(T entity) {
    baseRepository.save(entity);
  }

  public void save(T entity) {
    baseRepository.save(entity);
  }

  public void deleteById(Long id) {
    baseRepository.deleteById(id);
  }

  public void delete(T entity) {
    baseRepository.delete(entity);
  }
}
