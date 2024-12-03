## Getting Started

This project is a starting point for a Flutter application and Clean Architecture.

A few resources to get you started if this is your first Flutter project with clean architecture:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Design Pattern: The Clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Effective Dart: Write code with Dart Best practices](https://dart.dev/effective-dart)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Prerequisites
- Flutter SDK version 3.24.5
- Dart SDK version 3.5.4
- Xcode for ios development
- Android Studio for android development

## Project Structure
```bash

    flutter_pos/
      android                # Native Platform Android Configuration 
      ios                    # Native Platform IOS Configuration 
      macos                  # Native Platform Desktop MacOS Configuration 
      windows                # Native Platform Desktop Windows Configuration 
      linux                  # Native Platform Desktop Linux Configuration
      web                    # Native Platform Web Configuration
      pubspec.yaml           # Project dependencies and configuration
      pubspec.lock           # Project dependencies lock file
      custom_library/        # Custom Library
      integration_test/      # e2e testing of application
      coverage/              # Generated unit testing coverage
      test/                  # Unit testing of application
      sh/                    # Custom command for development
      assets/                # Application assets
      lib/                   # Application source
        core/
          config/            # Config for Realm Database, Env and MQTT
          constant/          # Application constant like url, mqtt topics
          errors/            # Error exception
          extensions/        # Extension
          helpers/           # Application Helpers
          logger/            # Application Logger, BLOC logger and application logger
          module/            # Shared instances
          router/            # Application router
          styles/            # Application UI styles, like color, text style, theme
          usecases/          # Base contract of usecase
          widget/            # Shared widget or component
      gen/                   # Generated files output for localizations, assets, and fonts
      features/              # Features implementation of application
      app.dart               # Class for handling initialization core module
      common.dart            # Global variables
      injector.dart          # Configuration for Dependency Injection
      inspector.dart         # Debugging Tools for inspect HTTP Network, Realm Database, and Local storage (Shared Preferences)
      main.dart              # Application entry point
    build.yaml               # Generated file configuration
    analysis_option.yaml     # Linter configuration
          
```
## Design Pattern
<img width="965" alt="image" src="https://github.com/user-attachments/assets/a47118d4-557e-453f-9be8-a40de4b82841">

## Feature Structure Details
<img width="965" alt="image" src="https://github.com/user-attachments/assets/0cc93e26-f1a6-48b7-911d-11b032c27b2a">

## Installation

### Clone project
```bash
git clone https://github.com/ekokurniadi/design_project1.git
cd design_project1
```

### Create .env file
```bash
cp .env.example .env
```

### Download project dependencies
```bash
flutter pub get
```

## Running the project
#### Using terminal
```bash
flutter run
```
#### Using debug console
```
Press F5 on your keyboard
```
## Running Unit Test
```bash
flutter test
```
## Running Integration Test
```bash
flutter test integration_test
```
## Generate Localizations
```bash
bash sh/localization.sh
```
