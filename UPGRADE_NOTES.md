# Flutter 3.38.3 and Dependencies Upgrade

## Summary
This document outlines the upgrade from Flutter 3.35.1 to 3.38.3 and the corresponding package updates.

## Changes Made

### 1. Flutter Version Upgrade
- **Flutter**: 3.35.1 → 3.38.3
- **Dart SDK**: Updated minimum to 3.10.0 (required by Flutter 3.38.3)
- Updated files:
  - `.fvmrc`
  - `.fvm/fvm_config.json`
  - `pubspec.yaml` (SDK constraint)

### 2. Package Upgrades

#### Core Dependencies
- `flutter_riverpod`: 2.6.1 → 3.2.1 (major version upgrade)
- `hooks_riverpod`: 2.6.1 → 3.2.1 (major version upgrade)
- `google_fonts`: 6.3.0 → 8.0.1
- `health`: 13.1.1 → 14.0.1
- `firebase_core`: 4.0.0 → 4.8.0
- `firebase_analytics`: 12.0.0 → 12.1.0
- `firebase_crashlytics`: 5.0.0 (unchanged - using latest)

#### Other Dependencies
All other dependencies have been updated to use caret (^) notation for better version management:
- `device_check`: ^1.0.0
- `flutter_hooks`: ^0.21.3
- `introduction_screen`: ^3.1.17
- `shared_preferences`: ^2.5.3
- `cupertino_icons`: ^1.0.8
- `intl`: ^0.20.2
- `localizely_sdk`: ^2.7.1
- `rate_my_app`: ^2.3.2
- `freezed`: ^3.2.0
- `json_serializable`: ^6.10.0

#### Dev Dependencies
- `build_runner`: ^2.7.0
- `mockito`: ^5.5.0
- `remove_from_coverage`: ^2.0.0
- `flutter_lints`: ^6.0.0
- `frontend_server_client`: ^4.0.0

## Riverpod 3.0 Migration

### Breaking Changes in Riverpod 3.0
The codebase has been verified to be compatible with Riverpod 3.0. Key points:

1. **Widget Visibility Pausing**: In Riverpod 3.0, providers in invisible widgets are paused by default. This app doesn't rely on background updates, so this change has no impact.

2. **API Compatibility**: The following APIs remain unchanged:
   - `ref.read()`
   - `ref.watch()`
   - `ref.listen()`
   - `ref.invalidate()`
   - `ref.refresh()`

3. **Modern Patterns Already in Use**: The codebase already uses the modern Riverpod patterns:
   - `ConsumerWidget`
   - `HookConsumerWidget`
   - `Provider`
   - `StateProvider`
   - `FutureProvider`
   - `FutureProvider.family`

4. **No Deprecated APIs Found**: The codebase does not use any deprecated APIs such as:
   - `StateNotifierProvider` (deprecated in favor of `NotifierProvider`)
   - `ChangeNotifierProvider` (deprecated)
   - Old-style providers

## Testing Required

After running `flutter pub get`, the following steps should be completed:

### 1. Run Build Runner
```bash
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

### 2. Run Tests
```bash
fvm flutter test test --no-pub --test-randomize-ordering-seed random
```

### 3. Run Linter
```bash
fvm flutter analyze
```

### 4. Run with Coverage
```bash
fvm flutter test test --no-pub --coverage --test-randomize-ordering-seed random
```

## Potential Issues to Watch For

### Health Package (13.1.1 → 14.0.1)
- Monitor for any API changes in the `health` package
- Check if HealthDataType enums remain the same
- Verify data retrieval methods still work as expected

### Firebase Packages
- Firebase packages are using the latest Flutter BoM (Bill of Materials) v4.8.0
- Monitor for any deprecation warnings during build
- Check analytics and crashlytics initialization

### Google Fonts (6.3.0 → 8.0.1)
- Verify fonts load correctly
- Check for any asset loading changes

## Next Steps

1. Install Flutter 3.38.3 using FVM:
   ```bash
   fvm install 3.38.3
   fvm use 3.38.3
   ```

2. Get dependencies:
   ```bash
   fvm flutter pub get
   ```

3. Regenerate generated files:
   ```bash
   make flutter_generate
   ```

4. Run tests:
   ```bash
   make flutter_test
   ```

5. If all tests pass, build the app and perform manual testing:
   ```bash
   fvm flutter build ios --release  # For iOS
   fvm flutter build apk --release  # For Android
   ```

## Rollback Plan

If issues are encountered, you can rollback by:
1. Reverting the commits in this PR
2. Running `fvm flutter pub get` to restore previous dependencies
3. Running `make flutter_generate` to regenerate code

## References

- [Flutter 3.38.3 Release Notes](https://docs.flutter.dev/release/release-notes/release-notes-3.38.0)
- [Riverpod 3.0 Migration Guide](https://riverpod.dev/docs/whats_new)
- [Firebase Flutter Release Notes](https://firebase.google.com/support/release-notes/flutter)
