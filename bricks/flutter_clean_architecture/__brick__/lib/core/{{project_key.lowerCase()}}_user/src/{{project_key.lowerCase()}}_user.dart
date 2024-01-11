import '../../core.dart';

final class {{project_key.upperCase()}}User {
  {{project_key.upperCase()}}User._();

  static final _instance = {{project_key.upperCase()}}User._();
  static {{project_key.upperCase()}}User get instance => _instance;

  Future<String?> get token {
    return {{project_key.upperCase()}}SecureStorage.instance.read(key: 'token', converter: (rawString) => rawString);
  }

  Future<void> writeToken(String token) async {
    {{project_key.upperCase()}}SecureStorage.instance.write(key: 'token', value: token);
  }

  Future<void> deleteToken() async {
    {{project_key.upperCase()}}SecureStorage.instance.delete(key: 'token');
  }
}
