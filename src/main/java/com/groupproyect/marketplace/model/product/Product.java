package com.groupproyect.marketplace.model.product;

import java.util.List;

import com.groupproyect.marketplace.model.BaseModelWithDate;
import com.groupproyect.marketplace.model.order.Order;
import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.model.valoration.ValorationProduct;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "products")
@Getter
@Setter
public class Product extends BaseModelWithDate {
  // private Long idCategoryThree; // FK

  private String name;
  private Double price;

  // Table with Foreign Key
  // Table: store FK
  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "store_id")
  private Store store;

  /* */

  // Referenced table
  // Table: valorations_products FK
  @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
  private List<ValorationProduct> valorationProducts;

  // Referenced table
  // Table: orders_products FK
  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "orders_products", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "order_id"))
  private List<Order> orders;
}
