import 'package:envid_sample/env/secret_env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Envied', () {
    test('singleton instance', () {
      final secretEnv1 = SecretEnv();
      final secretEnv2 = SecretEnv();

      expect(identical(secretEnv1, secretEnv2), isTrue);
    });
  });
}
