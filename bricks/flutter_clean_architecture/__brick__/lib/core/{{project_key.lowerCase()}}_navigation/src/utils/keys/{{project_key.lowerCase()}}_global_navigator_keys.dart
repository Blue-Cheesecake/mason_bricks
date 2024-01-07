import 'package:flutter/material.dart';

final class {{project_key.upperCase()}}GlobalNavigatorKeys {
  {{project_key.upperCase()}}GlobalNavigatorKeys._();

  static final GlobalKey<NavigatorState> rootNavigator = GlobalKey(debugLabel: 'root');
}
