
import 'agora_flutter_platform_interface.dart';

class AgoraFlutter {
  Future<String?> getPlatformVersion() {
    return AgoraFlutterPlatform.instance.getPlatformVersion();
  }
}
