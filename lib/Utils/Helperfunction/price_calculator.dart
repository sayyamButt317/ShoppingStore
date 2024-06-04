class PriceCalculator {
  //calculate price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingcost = getShippingCost(location);
    return shippingcost.toStringAsFixed(2);
  }

  //calculate tax
  static String calculateTaxCost(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 0.10;
  }
}
