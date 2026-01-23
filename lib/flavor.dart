enum Flavor {
  dev,
  prod;

  static Flavor from() {
    switch (String.fromEnvironment('FLAVOR', defaultValue: 'dev')) {
      case 'dev':
        return Flavor.dev;
      case 'prod':
        return Flavor.prod;
      default:
        throw Exception('Unknown flavor');
    }
  }
}
