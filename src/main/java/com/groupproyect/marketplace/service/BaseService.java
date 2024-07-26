
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

  public T findById(Integer id) {
    return findById(castFromIntegerToLong(id));
  }

  public T findById(String id) {
    return findById(castFromStringToLong(id));
  }

  public boolean existsbyId(Long id) {
    if (id == null) {
      return false;
    }
    return baseRepository.existsById(id);
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

  public Long castFromIntegerToLong(Integer auxInt) {
    if (auxInt == null) {
      return null;
    }
    return Long.valueOf(auxInt);
  }

  public Long castFromStringToLong(String auxString) {
    System.out.println("1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
    if (auxString == null) {
      return null;
    }
    try {
      return Long.valueOf(auxString);
    } catch (NumberFormatException e) {
      System.err.println("Error: el string no se puede convertir a Long. " + e.getMessage());
      return null;
    }
  }
}
