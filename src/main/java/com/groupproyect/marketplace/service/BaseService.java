package com.groupproyect.marketplace.service;

import java.util.List;
import java.util.Optional;

import com.groupproyect.marketplace.repository.BaseRepository;

public class BaseService<T> {
  private final BaseRepository<T> baseRepository;

  public BaseService(BaseRepository<T> baseRepository) {
    this.baseRepository = baseRepository;
  }

  public List<T> findAll() {
    return baseRepository.findAll();
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

  public T save(T entity) {
    return baseRepository.save(entity);
  }

  public void deleteById(Long id) {
    baseRepository.deleteById(id);
  }

  public void delete(T entity) {
    baseRepository.delete(entity);
  }
}