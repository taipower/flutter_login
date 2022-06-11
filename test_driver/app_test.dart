import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Login Page', () {
    final usernameField = find.byValueKey('usernameField');
    final passwordField = find.byValueKey('passwordField');
    final loginButton = find.byValueKey('loginButton');
    final errorMsg = find.byValueKey('errorMessage');
    final okDialog = find.byValueKey('ok');

    late FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('empty field', () async {
      await Future.delayed(Duration(seconds: 3));

      await driver.tap(loginButton);
      expect(await driver.getText(errorMsg), "กรุณาระบุ username และ password");

      await driver.tap(okDialog);
    });
  });
}
