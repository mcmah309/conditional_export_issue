import 'dart:io';

import 'package:conditional_export_issue/conditional_export_issue.dart';
import 'package:test/test.dart';

void main() {
  test('First Test', () {
    if (Platform.isLinux) {
      print("Called on Linux");
      expect(isLinux(), isTrue);
    } else if (Platform.isWindows) {
      print("Called on Windows");
      expect(isLinux(), isFalse);
    } else {
      print("Called on neither");
      expect(isLinux, throwsA(isA<UnimplementedError>()));
    }
  });
}
