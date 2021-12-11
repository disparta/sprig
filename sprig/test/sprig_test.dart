import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sprig/sprig.dart';

void main() {
  const MethodChannel channel = MethodChannel('userleap_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await UserleapFlutter.configure('gdgfsgdf'), '42');
  });
}
