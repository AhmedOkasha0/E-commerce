import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, pro }

class EnvVariables {
  EnvVariables._();

  static final EnvVariables instance = EnvVariables._();

  String _envType = "";

  Future<void> init({required EnvTypeEnum envTypeEnum}) async {
    switch (envTypeEnum) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: ".env.dev");

      case EnvTypeEnum.pro:
        await dotenv.load(fileName: ".env.production");
    }

    _envType=dotenv.get("ENV_TYPE");
  }


  String get envType => _envType;
}
