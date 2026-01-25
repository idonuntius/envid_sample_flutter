import 'package:envid_sample/flavor.dart';
import 'package:envied/envied.dart';

part 'secret_env.g.dart';

@Envied(path: '.env_dev', name: 'DevEnv')
@Envied(path: '.env_prod', name: 'ProdEnv')
final class SecretEnv {
  factory SecretEnv() => _instance;

  static final SecretEnv _instance = switch (Flavor.from()) {
    .dev => _DevEnv(),
    .prod => _ProdEnv(),
  };

  @EnviedField(varName: 'KEY1')
  final String key1 = _instance.key1;

  @EnviedField(varName: 'KEY2')
  final String key2 = _instance.key2;

  // .envに定義していないvar名がある場合はエラーになる
  // Environment variable not found for field `key3`.
  // @EnviedField(varName: 'KEY3')
  // final String key3 = _instance.key3;

  @EnviedField(varName: 'KEY4', defaultValue: '')
  final String key4 = _instance.key4;

  @EnviedField(varName: 'KEY5', defaultValue: '', obfuscate: true)
  final String key5 = _instance.key5;

  @EnviedField(varName: 'KEY6', defaultValue: '', obfuscate: true)
  final String key6 = _instance.key6;
}
