import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'agora_flutter_platform_interface.dart';

/// An implementation of [AgoraFlutterPlatform] that uses method channels.
class MethodChannelAgoraFlutter extends AgoraFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('agora_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
