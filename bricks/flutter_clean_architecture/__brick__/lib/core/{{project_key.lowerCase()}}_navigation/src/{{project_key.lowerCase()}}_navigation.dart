import 'package:go_router/go_router.dart';

import '../../core.dart';
import 'widgets/widgets.dart';

final class {{project_key.upperCase()}}Navigation {
  {{project_key.upperCase()}}Navigation._();

  static const _location = '{{project_key.upperCase()}}Navigation';
  static final {{project_key.upperCase()}}Navigation _instance = {{project_key.upperCase()}}Navigation._();
  static {{project_key.upperCase()}}Navigation get instance => _instance;

  final _router = GoRouter(
    initialLocation: RoutePaths.homepage,
    navigatorKey: {{project_key.upperCase()}}GlobalNavigatorKeys.rootNavigator,
    routes: Routes.list,
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;

  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    // {{project_key.upperCase()}}Logger.info(location: _location, message: 'push to $location');
    return _router.push(location, extra: extra);
  }

  Future<void> pop<T extends Object?>([T? result]) async {
    // {{project_key.upperCase()}}Logger.info(location: _location, message: 'pop');
    return _router.pop(result);
  }

  Future<void> go<T extends Object?>(String location, {Object? extra}) async {
    // {{project_key.upperCase()}}Logger.info(location: _location, message: 'go to $location');
    return _router.go(location, extra: extra);
  }
}
