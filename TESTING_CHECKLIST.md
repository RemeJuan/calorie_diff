# Testing Checklist for Flutter 3.38.3 Upgrade

This document provides a comprehensive testing checklist to verify the upgrade is successful.

## Prerequisites

1. Install Flutter 3.38.3:
   ```bash
   fvm install 3.38.3
   fvm use 3.38.3
   ```

2. Verify Flutter version:
   ```bash
   fvm flutter --version
   # Should show: Flutter 3.38.3
   ```

## Step 1: Dependency Installation

```bash
cd /path/to/calorie_diff
fvm flutter pub get
```

**Expected Result**: All dependencies should resolve without conflicts.

**Potential Issues**:
- If you see version conflicts, check the UPGRADE_NOTES.md for guidance
- Ensure Dart SDK 3.10.0 or higher is being used

## Step 2: Code Generation

```bash
make flutter_generate
# or
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

**Expected Result**: 
- All `*.g.dart` and `*.freezed.dart` files should regenerate successfully
- No errors or warnings

## Step 3: Linting

```bash
fvm flutter analyze
```

**Expected Result**: 
- No errors
- Any warnings should be reviewed but may be acceptable

## Step 4: Unit Tests

```bash
make flutter_test
# or
fvm flutter test test --no-pub --test-randomize-ordering-seed random
```

**Expected Result**: All tests should pass.

**Key areas to verify**:
- Provider tests (core_providers_test.dart)
- Widget tests
- Mock tests

## Step 5: Coverage Testing

```bash
make flutter_coverage
# or
fvm flutter test test --no-pub --coverage --test-randomize-ordering-seed random
```

**Expected Result**: 
- Coverage should be >= 75% (as required by CI)
- No significant drop in coverage from previous version

## Step 6: Build Testing

### iOS Build
```bash
fvm flutter build ios --debug
```

**Expected Result**: Build should complete successfully.

### Android Build
```bash
fvm flutter build apk --debug
```

**Expected Result**: Build should complete successfully.

## Step 7: Manual Testing

Run the app on a physical device or emulator and verify:

### Health Permissions
- [ ] App requests health permissions on first launch
- [ ] Permissions are properly granted/denied
- [ ] No crashes related to health API

### Current Page
- [ ] Displays current day's calorie data
- [ ] Shows burned, consumed, and difference values
- [ ] Refreshes data on pull-down
- [ ] Displays macros correctly

### Historic Page
- [ ] Displays historical data for selected days
- [ ] Range picker allows selecting 7, 14, 30 days
- [ ] Data loads correctly for all ranges
- [ ] Historical macros display correctly

### Settings Page
- [ ] Settings are preserved across app launches
- [ ] All settings controls work correctly

### General
- [ ] App launches without crashes
- [ ] Navigation between tabs works smoothly
- [ ] Fonts render correctly (google_fonts upgrade)
- [ ] No console errors or warnings
- [ ] Firebase analytics tracking works
- [ ] Crashlytics is properly initialized

## Step 8: Riverpod 3.0 Specific Testing

Since Riverpod was upgraded from 2.6.1 to 3.2.1, verify:

### Provider Lifecycle
- [ ] Providers refresh correctly when invalidated
- [ ] Provider state persists across widget rebuilds
- [ ] No memory leaks from provider disposal

### Widget Visibility
- [ ] Providers work correctly when switching tabs
- [ ] No issues with provider state when navigating

### Async Data Loading
- [ ] FutureProvider loading states work correctly
- [ ] Error states are handled properly
- [ ] Data refreshes work as expected

## Step 9: Firebase Testing

Verify Firebase integration:
- [ ] Firebase initializes without errors
- [ ] Analytics events are logged (check Firebase console)
- [ ] Crashlytics is capturing errors (if any occur)

## Step 10: Performance Testing

- [ ] App startup time is reasonable
- [ ] No noticeable lag or stuttering
- [ ] Memory usage is stable
- [ ] Battery usage is acceptable

## Known Issues & Workarounds

### Issue 1: Health Package API Changes
If you encounter errors related to the health package:
1. Check the [health package changelog](https://pub.dev/packages/health/changelog)
2. Review any API changes between 13.1.1 and 14.0.1
3. Update code as needed

### Issue 2: Riverpod Widget Visibility
If providers stop updating when widgets are not visible:
1. This is expected behavior in Riverpod 3.0
2. If this causes issues, consider using `ref.listen` instead of `ref.watch`
3. See [Riverpod migration guide](https://riverpod.dev/docs/whats_new) for details

## Rollback Procedure

If critical issues are found:

1. Revert the upgrade commits:
   ```bash
   git revert HEAD~2..HEAD
   ```

2. Reinstall Flutter 3.35.1:
   ```bash
   fvm use 3.35.1
   fvm flutter pub get
   ```

3. Regenerate code:
   ```bash
   make flutter_generate
   ```

4. Run tests to verify rollback:
   ```bash
   make flutter_test
   ```

## Success Criteria

The upgrade is considered successful when:
- [x] All dependencies resolve without conflicts
- [x] Code generation completes successfully
- [x] Linter passes with no errors
- [ ] All unit tests pass
- [ ] Coverage remains >= 75%
- [ ] App builds for both iOS and Android
- [ ] Manual testing shows no regressions
- [ ] CI/CD pipeline passes

## Reporting Issues

If you encounter issues during testing:

1. Document the exact error message
2. Note which step in this checklist it occurred
3. Include Flutter version output (`fvm flutter --version`)
4. Include relevant logs or stack traces
5. Create an issue on GitHub with the "upgrade" label

## Additional Resources

- [Flutter 3.38.3 Release Notes](https://docs.flutter.dev/release/release-notes/release-notes-3.38.0)
- [Riverpod 3.0 What's New](https://riverpod.dev/docs/whats_new)
- [Firebase Flutter Release Notes](https://firebase.google.com/support/release-notes/flutter)
- [Health Package Documentation](https://pub.dev/packages/health)
