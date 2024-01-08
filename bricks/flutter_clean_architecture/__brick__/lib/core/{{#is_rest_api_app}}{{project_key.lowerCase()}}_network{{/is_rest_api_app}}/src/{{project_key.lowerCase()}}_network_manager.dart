import 'package:internet_connection_checker/internet_connection_checker.dart';

final class {{project_key.upperCase()}}NetworkManager {
  {{project_key.upperCase()}}NetworkManager();

  static final _internetConnectionChecker = InternetConnectionChecker();

  Future<bool> get isInternetConnected => _internetConnectionChecker.hasConnection;
}
