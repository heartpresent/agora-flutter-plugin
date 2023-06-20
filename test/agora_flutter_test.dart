import 'package:flutter_test/flutter_test.dart';
import 'package:agora_flutter/agora_flutter.dart';
import 'package:agora_flutter/agora_flutter_platform_interface.dart';
import 'package:agora_flutter/agora_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAgoraFlutterPlatform
    with MockPlatformInterfaceMixin
    implements AgoraFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AgoraFlutterPlatform initialPlatform = AgoraFlutterPlatform.instance;

  test('$MethodChannelAgoraFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAgoraFlutter>());
  });

  test('getPlatformVersion', () async {
    AgoraFlutter agoraFlutterPlugin = AgoraFlutter();
    MockAgoraFlutterPlatform fakePlatform = MockAgoraFlutterPlatform();
    AgoraFlutterPlatform.instance = fakePlatform;

    expect(await agoraFlutterPlugin.getPlatformVersion(), '42');
  });
}
