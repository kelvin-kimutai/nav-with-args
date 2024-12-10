import 'package:flutter_test/flutter_test.dart';
import 'package:nav_with_args/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ArticleViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
