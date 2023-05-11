import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigEnv {
  final String apiKey;
  final String appId;
  final String projectId;
  final String messagingSenderId;
  ConfigEnv({
    required this.apiKey,
    required this.appId,
    required this.messagingSenderId,
    required this.projectId,
  });
}

class IConfig {
  final ConfigEnv configEnv;
  IConfig({required this.configEnv});
}

IConfig iConfig = IConfig(
  configEnv: ConfigEnv(
    apiKey: dotenv.get('API_KEY'),
    appId: dotenv.get('APP_ID'),
    messagingSenderId: dotenv.get('MESSAGING_SENDER_ID'),
    projectId: dotenv.get('PROJECT_ID'),
  ),
);
