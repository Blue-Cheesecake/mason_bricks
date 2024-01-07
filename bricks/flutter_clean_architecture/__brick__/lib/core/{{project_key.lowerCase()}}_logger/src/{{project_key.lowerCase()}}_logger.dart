import 'dart:developer';

import 'package:flutter/material.dart';

final class {{project_key.upperCase()}}Logger {
  {{project_key.upperCase()}}Logger._();

  static const _enableDebug = false;

  static void _log({
    required _LogLevel level,
    required String emoji,
    required String location,
    required String message,
    Object? errorObject,
    StackTrace? stackTrace,
    bool useLog = true,
  }) {
    String timestamp = DateTime.now().toIso8601String();
    String logMessage = '[${level.label} $emoji][$location][$timestamp]: $message';

    if (level == _LogLevel.error && errorObject != null) {
      logMessage += '\nError: $errorObject';
      if (stackTrace != null) logMessage += '\nStackTrace: $stackTrace';
    }

    if (useLog) {
      log(logMessage);
      return;
    }
    debugPrint(logMessage);
  }

  static void info({required String location, required String message}) {
    _log(level: _LogLevel.info, emoji: 'ℹ️', location: location, message: message);
  }

  static void error({
    required String location,
    required String message,
    Object? errorObject,
    StackTrace? stackTrace,
  }) {
    _log(
      level: _LogLevel.error,
      emoji: '🔴',
      location: location,
      message: message,
      errorObject: errorObject,
      stackTrace: stackTrace,
    );
  }

  static void debug({required String location, required String message}) {
    if (_isDebugLogEnabled) {
      _log(level: _LogLevel.debug, emoji: '👁️', location: location, message: message, useLog: false);
    }
  }
}

enum _LogLevel {
  info(label: 'INFO'),
  error(label: 'ERROR'),
  debug(label: 'DEBUG');

  const _LogLevel({required this.label});

  final String label;
}
