# Flutter Clean Architecture

A new brick created with the Mason CLI for generating a Flutter project scaffolded according to Clean Architecture principles.

## Overview

This Mason brick provides a quick start to a new Flutter project using Clean Architecture. It includes predefined project structure, core components, optional REST API setup, Riverpod for state management, and VSCode settings. It's ideal for projects where you want a scalable and maintainable architecture from the get-go.

## Features

- Predefined project structure following Clean Architecture principles.
- Optional RESTful API integration.
- Riverpod for state management (optional).
- VSCode configuration including launch.json and settings.json (optional).
- Core components for networking, logging, navigation, secure storage, theming, and user management.

## Output

```bash
****
├── assets
│   ├── fonts
│   └── images
│       └── sample_image.jpg
├── lib
│   ├── app_wd.dart
│   ├── core
│   │   ├── app_config
│   │   │   ├── app_config.dart
│   │   │   └── src
│   │   │       ├── app_config.dart
│   │   │       └── src.dart
│   │   ├── core.dart
│   │   ├── [project_key.lowerCase()]_logger
│   │   │   ├── src
│   │   │   │   ├── src.dart
│   │   │   │   └── [project_key.lowerCase()]_logger.dart
│   │   │   └── [project_key.lowerCase()]_logger.dart
│   │   ├── [project_key.lowerCase()]_navigation
│   │   │   ├── src
│   │   │   │   ├── src.dart
│   │   │   │   ├── utils
│   │   │   │   │   ├── constants
│   │   │   │   │   │   ├── constants.dart
│   │   │   │   │   │   ├── route_paths.dart
│   │   │   │   │   │   └── routes.dart
│   │   │   │   │   ├── keys
│   │   │   │   │   │   ├── keys.dart
│   │   │   │   │   │   └── [project_key.lowerCase()]_global_navigator_keys.dart
│   │   │   │   │   └── utils.dart
│   │   │   │   ├── widgets
│   │   │   │   │   ├── not_found_page.dart
│   │   │   │   │   └── widgets.dart
│   │   │   │   └── [project_key.lowerCase()]_navigation.dart
│   │   │   └── [project_key.lowerCase()]_navigation.dart
│   │   ├── [project_key.lowerCase()]_secure_storage
│   │   │   ├── src
│   │   │   │   ├── src.dart
│   │   │   │   └── [project_key.lowerCase()]_secure_storage.dart
│   │   │   └── [project_key.lowerCase()]_secure_storage.dart
│   │   ├── [project_key.lowerCase()]_theme
│   │   │   ├── src
│   │   │   │   ├── design_system.dart
│   │   │   │   ├── src.dart
│   │   │   │   └── [project_key.lowerCase()]_theme.dart
│   │   │   └── [project_key.lowerCase()]_theme.dart
│   │   └── [project_key.lowerCase()]_user
│   │       ├── src
│   │       │   ├── src.dart
│   │       │   └── [project_key.lowerCase()]_user.dart
│   │       └── [project_key.lowerCase()]_user.dart
│   ├── features
│   │   └── home
│   │       └── homepage.dart
│   ├── main.dart
│   ├── main_run_app.dart
│   └── utils
│       ├── base_classes
│       │   ├── base_classes.dart
│       │   ├── base_result.dart
│       │   ├── base_result.freezed.dart
│       │   └── base_usecase.abs.dart
│       ├── constants
│       │   ├── common_messages.dart
│       │   └── constants.dart
│       ├── exceptions
│       │   ├── any_exception.abs.dart
│       │   ├── exceptions.dart
│       │   ├── unkown_exception.dart
│       │   └── [is_rest_api_app]internet_connection_exception.dart
│       ├── utils.dart
│       └── [is_using_riverpod]riverpod
│           ├── riverpod.dart
│           └── [project_key.lowerCase()]_state_notifier.dart
└── pubspec.yaml

```