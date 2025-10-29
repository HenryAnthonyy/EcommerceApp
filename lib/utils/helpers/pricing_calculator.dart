class TPricingCalculator {


  // Returns tax rate for a given location
  static double getTaxRateForLocation(String location) {
    // Use tax rate for the given location from tax rate database API
    // return appropriate tax rate
    return 0.10; // UK tax rate // TODO: find UG tax rate
  }

  static double getShippingCost(String location) {
    // Lookup shipping cost for a given location using a shipping rate API
    // Calculate shipping cost based on various factors like distance, weight etc
    return 5.00; // example rate
  }

  /// - - Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost  = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate tax rate
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = taxRate * productPrice;

    return taxAmount.toStringAsFixed(2);
  }
}