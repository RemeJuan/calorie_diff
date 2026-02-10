# Copilot Instructions for Calorie Diff

Calorie Diff is a Flutter application for Apple Health users that displays caloric intake vs. output, helping users track their calorie difference (deficit or surplus). The app integrates with Apple Health to fetch Active Energy, Resting Energy, and Dietary Energy data.

This is a Flutter/Dart repository using Riverpod for state management, with Firebase integration for analytics and crash reporting. The app is iOS-only and integrates with Apple HealthKit. Please follow these guidelines when contributing:

## Required Before Each Commit

- Run `fvm flutter analyze` to ensure code meets linting standards
- Run `make flutter_test` to ensure all tests pass (enforced by pre-push git hook)
- Run `make flutter_generate` after modifying any models or adding serialization

## Development Flow

- **Build & Analyze**: `fvm flutter analyze`
- **Test**: `make flutter_test` (runs with randomized ordering)
- **Test with Coverage**: `make flutter_coverage`
- **Generate Code**: `make flutter_generate` (for freezed/json_serializable)
- **Full Check**: Run analyze + test before pushing (test is enforced by lefthook pre-push hook)

## Tech Stack

- **Framework**: Flutter 3.8.0+
- **Language**: Dart
- **State Management**: Riverpod (flutter_riverpod, hooks_riverpod)
- **Code Generation**: freezed, json_serializable, build_runner
- **Analytics & Crash Reporting**: Firebase Analytics, Firebase Crashlytics
- **Health Data**: Apple Health integration via `health` package
- **Localization**: flutter_localizations with localizely_sdk (30+ languages)
- **Version Manager**: FVM (Flutter Version Management) - always use `fvm` prefix for flutter commands

## Code Standards

### Dart/Flutter Conventions

1. Follow `package:flutter_lints/flutter.yaml` rules
2. Always use `prefer_const_constructors` where applicable
3. Prefer final variables: use `prefer_final_locals` and `prefer_final_in_for_each`
4. **Never use `print()`** - use proper logging mechanisms instead
5. Use `omit_local_variable_types` - let Dart infer types where clear
6. Sort child properties last in widget trees
7. Use `directives_ordering` - organize imports properly
8. Avoid relative lib imports - use absolute imports
9. Place required named parameters first
10. Use collection literals (not constructors)
11. Treat unused imports, elements, variables, and dead code as errors

### Code Quality Metrics

Configured in `dart_code_metrics` (excludes `test/**` and `lib/generated/**`):

- Maximum cyclomatic complexity: 20
- Maximum nesting level: 5
- Maximum parameters per method: 4
- Maximum source lines of code: 50

## Code Generation

- Generated files: `*.g.dart`, `*.freezed.dart`, `*.gr.dart` (excluded from analysis)
- Run after modifying models: `make flutter_generate`
- Manual command: `fvm flutter packages pub run build_runner build --delete-conflicting-outputs`
- Generated files in `lib/generated/**` should not be manually edited

## Key Guidelines

1. **Use FVM**: Always prefix Flutter commands with `fvm` (e.g., `fvm flutter analyze`)
2. **State Management**: Use Riverpod providers; prefer `ConsumerWidget` or `HookConsumerWidget`
3. **Immutability**: Use freezed for immutable data models
4. **Code Generation**: Run `make flutter_generate` after modifying models
5. **Testing**: Write tests for new features; maintain or improve coverage
6. **Localization**: Ensure all user-facing strings are localizable (30+ languages supported)
7. **iOS Only**: This app requires iOS with HealthKit access
8. **Git Hooks**: Pre-push hook runs tests automatically; commit messages are validated

## Testing

- Unit tests in `test/` directory (mirrors `lib/` structure)
- Shared utilities: `test_helpers.dart`
- Mocking: Use `mockito` package
- Coverage tracking: CodeCov
- Test command: `make flutter_test` (randomized ordering)
- Requirements: Write tests for new features; maintain/improve coverage

## Project Structure

```
lib/
├── core/           # Core utilities and base classes
├── generated/      # Generated localization files
├── intro_screen/   # Onboarding screens
├── models/         # Data models (with freezed)
├── pages/          # Main app pages/screens
├── providers/      # Riverpod providers
├── shared/         # Shared components/utilities
├── theme/          # App theming
├── widgets/        # Reusable widgets
├── app.dart        # App widget
└── main.dart       # Entry point
```

## Localization

- Supports 30+ languages via localizely_sdk
- Files in `lib/generated/` and `lib/l10n/`
- Ensure all user-facing strings are localizable
- Project ID configured in `pubspec.yaml`

## Firebase

- Initialized in `main.dart`
- Analytics and Crashlytics configured
- Configuration in `lib/firebase_options.dart`

## Platform Notes

- **iOS Only**: Requires HealthKit access
- **Pod Install**: Use `make pod_install` (x86_64 architecture)
- **Apple Health Data**: Fetches Active Energy, Resting Energy, and Dietary Energy
