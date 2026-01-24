// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env_dev
final class _DevEnv implements SecretEnv {
  @override
  final String key1 = 'key1key1';

  @override
  final String key2 = '';

  @override
  final String key4 = '';

  static const List<int> _enviedkeykey5 = <int>[];

  static const List<int> _envieddatakey5 = <int>[];

  @override
  final String key5 = String.fromCharCodes(
    List<int>.generate(
      _envieddatakey5.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatakey5[i] ^ _enviedkeykey5[i]),
  );
}

final class _ProdEnv implements SecretEnv {
  @override
  final String key1 = 'key1key1key1';

  @override
  final String key2 = '';

  @override
  final String key4 = '';

  static const List<int> _enviedkeykey5 = <int>[];

  static const List<int> _envieddatakey5 = <int>[];

  @override
  final String key5 = String.fromCharCodes(
    List<int>.generate(
      _envieddatakey5.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatakey5[i] ^ _enviedkeykey5[i]),
  );
}
