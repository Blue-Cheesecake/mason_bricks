import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';

class {{project_key.upperCase()}}StateNotifier<T> extends StateNotifier<T> {
  {{project_key.upperCase()}}StateNotifier(super.state);

  static const _location = '{{project_key.upperCase()}}StateNotifier';

  T? get safeState {
    if (!mounted) {
      return null;
    }
    return state;
  }

  set safeState(T? value) {
    if (!mounted || value == null) {
      {{project_key.upperCase()}}Logger.error(location: _location, message: 'Cannot set safeState of $T. Mounted: $mounted, Value: $value');
      return;
    }
    state = value;
  }
}
