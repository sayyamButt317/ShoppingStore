
class Pricing{

  // Calculate price based on tax and shipping charges
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocatioon(location);
    double taxAmount = productPrice * taxRate ;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //Calculate Shipping cost
  static String calculateShippingCost(double productPrice, String location){
double shippingCost = getShippingCost(location);
return shippingCost.toStringAsFixed(2);
  }

//calculate Tax
static String calculateTax(double productPrice, String location){
  double taxRate = getTaxRateForLocatioon(location);
  double taxAmount = productPrice * taxRate ;
  return taxAmount.toStringAsFixed(2);
}

static double getTaxRateForLocatioon(String location){
  return 0.10;
}

static double getShippingCost(String location){
  return 5.00;
}
//sum all cart  values and  return total  amount
// static double calculateCartTotal(CartModel cart){
//   return cart.items.map((e) =>e.price).fold(0,(previousPrice,currentPrice)=>previousPrice+(currentPrice?? 0));
// }
}