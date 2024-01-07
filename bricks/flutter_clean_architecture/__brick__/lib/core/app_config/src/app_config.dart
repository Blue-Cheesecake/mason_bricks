enum AppConfigFlavor { dev, stg, prd }

class AppConfig {
  AppConfig._();
  static final _instance = AppConfig._();
  static AppConfig get instance => _instance;

  late AppConfigFlavor env;

  bool get isDev => env == AppConfigFlavor.dev;
  bool get isStg => env == AppConfigFlavor.stg;
  bool get isPrd => env == AppConfigFlavor.prd;

  bool _isAlreadyInitialzed = false;

  Future<void> init(AppConfigFlavor e) async {
    if (_isAlreadyInitialzed) {
      return;
    }
    _isAlreadyInitialzed = true;
    env = e;
  }
  {{#is_rest_api_app}}
  String get apiURL {
    const String envURL = String.fromEnvironment('apiURL');
    if (envURL.isNotEmpty) {
      return envURL;
    }
    throw Exception('The API URL is not defined');
  }
  {{/is_rest_api_app}}
}
