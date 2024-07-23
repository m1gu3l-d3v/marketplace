package com.groupproyect.marketplace.model.store;

import java.util.List;

import com.groupproyect.marketplace.model.BaseModelWithDate;
import com.groupproyect.marketplace.model.delivery.DeliveryMethod;
import com.groupproyect.marketplace.model.product.Product;
import com.groupproyect.marketplace.model.user.Seller;
import com.groupproyect.marketplace.model.valoration.ValorationStore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinTable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "stores")
@Getter
@Setter
public class Store extends BaseModelWithDate {
  // private Long idCategoryOne; // FK

  private String name;
  private Boolean isEnable;

  // Referenced Table
  // Table: sellers FK
  @OneToOne(mappedBy = "store", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
  private Seller seller;

  // Referenced Table
  // Table: locales FK
  @OneToMany(mappedBy = "store", fetch = FetchType.LAZY)
  private List<Local> locals;

  // Referenced Table
  // Table: products FK
  @OneToMany(mappedBy = "store", fetch = FetchType.LAZY)
  private List<Product> products;

  // Referenced Table
  // Table: valoration_stores FK
  @OneToMany(mappedBy = "store", fetch = FetchType.LAZY)
  private List<ValorationStore> valorationStores;

  // Referenced Table
  // Table: delivery_methods FK
  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "deliverys_methods_stores", joinColumns = @JoinColumn(name = "store_id"), inverseJoinColumns = @JoinColumn(name = "deliveryMethod_id"))
  private List<DeliveryMethod> deliveryMethods;

  @PrePersist
  public void setEnable() {
    this.isEnable = true;
  }
}