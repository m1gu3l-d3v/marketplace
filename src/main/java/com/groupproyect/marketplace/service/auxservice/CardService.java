package com.groupproyect.marketplace.service.aux;

import com.groupproyect.marketplace.aux.Card;

public class CardService {
  public static boolean cardVerify(Card card) {
    if (card != null) {
      return true;
    }
    return false;
  }
}
