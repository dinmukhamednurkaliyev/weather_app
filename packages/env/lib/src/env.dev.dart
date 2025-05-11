import 'package:envied/envied.dart';

part 'env.dev.g.dart';

/// {@template env}
/// Dev Environment variables. Used to access environment variables in the app.
/// {@endtemplate}
@Envied(path: '.env.dev', obfuscate: true)
abstract class EnvDev {
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static String apiKey = _EnvDev.apiKey;
}
