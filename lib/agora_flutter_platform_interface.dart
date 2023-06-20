import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'agora_flutter_method_channel.dart';

abstract class AgoraFlutterPlatform extends PlatformInterface {
  /// Constructs a AgoraFlutterPlatform.
  AgoraFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AgoraFlutterPlatform _instance = MethodChannelAgoraFlutter();

  /// The default instance of [AgoraFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelAgoraFlutter].
  static AgoraFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AgoraFlutterPlatform] when
  /// they register themselves.
  static set instance(AgoraFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
