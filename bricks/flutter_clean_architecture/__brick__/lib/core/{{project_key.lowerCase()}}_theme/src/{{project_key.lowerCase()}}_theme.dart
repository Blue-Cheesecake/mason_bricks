import 'package:flutter/material.dart';

import '../../core.dart';

final class {{project_key.upperCase()}}Theme {
  {{project_key.upperCase()}}Theme._();

  static ThemeData get _baseTheme => ThemeData(
        fontFamily: DesignSystem.someFont,
        disabledColor: DesignSystem.disable,
      );

  static ThemeData get light => _baseTheme.copyWith(
        scaffoldBackgroundColor: DesignSystem.g1,
        colorScheme: const ColorScheme.light(
          primary: DesignSystem.primary,
          secondary: DesignSystem.secondary,
          error: DesignSystem.error,
        ),
      );

  static ThemeData get dark => _baseTheme.copyWith(
        scaffoldBackgroundColor: Colors.grey,
        colorScheme: const ColorScheme.dark(
          primary: DesignSystem.primary,
          secondary: DesignSystem.secondary,
          error: DesignSystem.error,
        ),
      );
}
