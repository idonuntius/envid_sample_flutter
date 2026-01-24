enum Flavor {
  dev,
  prod;

  static Flavor from() {
    // ignore: avoid_print
    print('call!!!!');
    switch (String.fromEnvironment('FLAVOR', defaultValue: 'dev')) {
      case 'dev':
        return Flavor.dev;
      case 'prod':
        return Flavor.prod;
      default:
        return Flavor.dev;
    }
  }
}
