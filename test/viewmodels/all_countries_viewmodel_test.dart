import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_demo/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AllCountriesViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
