package com.groupproyect.marketplace.service.cite;

import com.groupproyect.marketplace.model.cite.District;
import com.groupproyect.marketplace.repository.cite.DistrictRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistrictService {
  private DistrictRepository districtRepository;

  public DistrictService(DistrictRepository districtRepository) {
    this.districtRepository = districtRepository;
  }

  public List<District> getAllDistricts() {
    return districtRepository.findAll();
  }
}
