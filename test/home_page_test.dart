import 'package:calculatorapp/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Calclulator Test", () {
    test('Addition Test', () {
      HomePageState homePageState = HomePageState();

      // Set the values for testing
      homePageState.t1.text = "5";
      homePageState.t2.text = "10";

      homePageState.doAddition();

      // Verify that the sum is correct
      expect(homePageState.sum, 15);
    });

    test('Subtraction Test', () {
      HomePageState homePageState = HomePageState();

      // Set the values for testing
      homePageState.t1.text = "15";
      homePageState.t2.text = "7";

      homePageState.doSub();

      // Verify that the subtraction result is correct
      expect(homePageState.sum, 8);
    });

    test('Multiplication Test', () {
      HomePageState homePageState = HomePageState();

      // Set the values for testing
      homePageState.t1.text = "4";
      homePageState.t2.text = "6";

      homePageState.doMul();

      // Verify that the product is correct
      expect(homePageState.sum, 24);
    });

    test('Division Test', () {
      HomePageState homePageState = HomePageState();

      // Set the values for testing
      homePageState.t1.text = "20";
      homePageState.t2.text = "4";

      homePageState.doDiv();

      // Verify that the division result is correct
      expect(homePageState.sum, 5);
    });
  });
}
