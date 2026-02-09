# Copilot Instructions for Calorie Diff

## Project Overview

Calorie Diff is a Flutter application for Apple Health users that displays caloric intake vs. output, helping users track their calorie difference (deficit or surplus). The app integrates with Apple Health to fetch Active Energy, Resting Energy, and Dietary Energy data.

## Tech Stack

- **Framework**: Flutter 3.8.0+
- **Language**: Dart
- **State Management**: Riverpod (flutter_riverpod, hooks_riverpod)
- **Code Generation**: freezed, json_serializable, build_runner
- **Analytics & Crash Reporting**: Firebase Analytics, Firebase Crashlytics
- **Health Data**: Apple Health integration via `health` package
- **Localization**: flutter_localizations with localizely_sdk (30+ languages)
- **Version Manager**: FVM (Flutter Version Management)

## Code Style & Conventions

### Dart/Flutter Standards

- Follow `package:flutter_lints/flutter.yaml` rules
- Always use `prefer_const_constructors` where applicable
- Prefer final variables: use `prefer_final_locals` and `prefer_final_in_for_each`
- Avoid using `print()` - use proper logging mechanisms instead
- Use `omit_local_variable_types` - let Dart infer types where clear
- Sort child properties last in widget trees
- Use `directives_ordering` - organize imports properly
- Avoid relative lib imports - use absolute imports

### Specific Rules

- **Code Quality Metrics**:
  - Maximum cyclomatic complexity: 20
  - Maximum nesting level: 5
  - Maximum parameters per method: 4
  - Maximum source lines per file: 50 (for non-generated files)
- **Required parameters**: Always place required named parameters first
- **Collections**: Always use collection literals (not constructors)
- **Unused code**: Treat unused imports, elements, variables, and dead code as errors

### State Management

- Use Riverpod providers for state management
- Prefer `ConsumerWidget` or `HookConsumerWidget` for widget-based consumption
- Use freezed for immutable data models
- Generate code with: `make flutter_generate` or `fvm flutter packages pub run build_runner build --delete-conflicting-outputs`

### Code Generation

- Generated files (`*.g.dart`, `*.freezed.dart`, `*.gr.dart`) are excluded from analysis
- Always run code generation after modifying models or serialization
- Generated files are in `lib/generated/**` and should not be manually edited

## Build, Test & Lint

### Available Make Commands

```bash
# Generate code (freezed, json_serializable)
make flutter_generate

# Run tests
make flutter_test

# Run tests with coverage
make flutter_coverage

# Generate coverage report
make flutter_cov
```

### Manual Commands

```bash
# Analyze code
fvm flutter analyze

# Run tests
fvm flutter test test --no-pub --test-randomize-ordering-seed random

# Generate code
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Git Hooks (Lefthook)

- **pre-push**: Runs unit tests automatically
- **commit-msg**: Validates commit message format
- **post-receive**: Runs `flutter pub get` and reinstalls hooks

## Testing

### Test Structure

- Unit tests are in `test/` directory, mirroring `lib/` structure
- Use `test_helpers.dart` for shared test utilities
- Mock dependencies using `mockito` package
- Test coverage is reported and tracked via CodeCov

### Testing Requirements

- Always write tests for new features
- Maintain or improve test coverage
- Use randomized test ordering for independence
- Exclude test files from metrics analysis

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

- App supports 30+ languages
- Localization files are in `lib/generated/` and `lib/l10n/`
- Use the localizely_sdk for runtime translations
- Always ensure new user-facing strings are localizable
- Project ID is configured in `pubspec.yaml`

## Firebase Integration

- Firebase is initialized in `main.dart`
- Analytics and Crashlytics are configured
- Configuration is in `lib/firebase_options.dart`

## Important Notes

- **Apple Health specific**: This app only works on iOS with HealthKit access
- **Version Management**: Always use `fvm` prefix for Flutter commands
- **Pod Install**: For iOS, use `make pod_install` (x86_64 architecture)
- **No prints**: Never use `print()` for debugging in production code
- **Immutability**: Prefer immutable data structures using freezed

## External Links

- [AppStore Listing](https://apps.apple.com/app/calorie-diff/id6444097631)
- [Website](https://caloriediff.app)
- [Localization Guide](https://localizely.com/blog/flutter-localization-step-by-step/)
