{{^is_using_riverpod}}
import 'package:flutter/material.dart';
{{/is_using_riverpod}}

{{#is_using_riverpod}}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/is_using_riverpod}}

import './core/core.dart';

class AppWD extends StatelessWidget {
  const AppWD({super.key});

  @override
  Widget build(BuildContext context) {

    {{^is_using_riverpod}}
    return MaterialApp.router(
        routerConfig: {{project_key.upperCase()}}Navigation.instance.router,
        debugShowCheckedModeBanner: false,
        theme: {{project_key.upperCase()}}Theme.light,
        darkTheme: {{project_key.upperCase()}}Theme.dark,
    );
    {{/is_using_riverpod}}

    {{#is_using_riverpod}}
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: {{project_key.upperCase()}}Navigation.instance.router,
        debugShowCheckedModeBanner: false,
        theme: {{project_key.upperCase()}}Theme.light,
        darkTheme: {{project_key.upperCase()}}Theme.dark,
      ),
    );
    {{/is_using_riverpod}}
  }
}
