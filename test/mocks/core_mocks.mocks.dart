// Mocks generated by Mockito 5.4.4 from annotations
// in calorie_diff/test/mocks/core_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i9;

import 'package:flutter/src/widgets/basic.dart' as _i6;
import 'package:flutter/src/widgets/page_view.dart' as _i5;
import 'package:flutter/src/widgets/scroll_context.dart' as _i8;
import 'package:flutter/src/widgets/scroll_physics.dart' as _i7;
import 'package:flutter/src/widgets/scroll_position.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeScrollPosition_0 extends _i1.SmartFake
    implements _i2.ScrollPosition {
  _FakeScrollPosition_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i3.SharedPreferences {
  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
        returnValueForMissingStub: <String>{},
      ) as Set<String>);
  @override
  Object? get(String? key) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as Object?);
  @override
  bool? getBool(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getBool,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as bool?);
  @override
  int? getInt(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getInt,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as int?);
  @override
  double? getDouble(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getDouble,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as double?);
  @override
  String? getString(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getString,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as String?);
  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  List<String>? getStringList(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getStringList,
          [key],
        ),
        returnValueForMissingStub: null,
      ) as List<String>?);
  @override
  _i4.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [PageController].
///
/// See the documentation for Mockito's code generation for more information.
class MockPageController extends _i1.Mock implements _i5.PageController {
  @override
  int get initialPage => (super.noSuchMethod(
        Invocation.getter(#initialPage),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  bool get keepPage => (super.noSuchMethod(
        Invocation.getter(#keepPage),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  double get viewportFraction => (super.noSuchMethod(
        Invocation.getter(#viewportFraction),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);
  @override
  bool get keepScrollOffset => (super.noSuchMethod(
        Invocation.getter(#keepScrollOffset),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  double get initialScrollOffset => (super.noSuchMethod(
        Invocation.getter(#initialScrollOffset),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);
  @override
  Iterable<_i2.ScrollPosition> get positions => (super.noSuchMethod(
        Invocation.getter(#positions),
        returnValue: <_i2.ScrollPosition>[],
        returnValueForMissingStub: <_i2.ScrollPosition>[],
      ) as Iterable<_i2.ScrollPosition>);
  @override
  bool get hasClients => (super.noSuchMethod(
        Invocation.getter(#hasClients),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i2.ScrollPosition get position => (super.noSuchMethod(
        Invocation.getter(#position),
        returnValue: _FakeScrollPosition_0(
          this,
          Invocation.getter(#position),
        ),
        returnValueForMissingStub: _FakeScrollPosition_0(
          this,
          Invocation.getter(#position),
        ),
      ) as _i2.ScrollPosition);
  @override
  double get offset => (super.noSuchMethod(
        Invocation.getter(#offset),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i4.Future<void> animateToPage(
    int? page, {
    required Duration? duration,
    required _i6.Curve? curve,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #animateToPage,
          [page],
          {
            #duration: duration,
            #curve: curve,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void jumpToPage(int? page) => super.noSuchMethod(
        Invocation.method(
          #jumpToPage,
          [page],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> nextPage({
    required Duration? duration,
    required _i6.Curve? curve,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #nextPage,
          [],
          {
            #duration: duration,
            #curve: curve,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> previousPage({
    required Duration? duration,
    required _i6.Curve? curve,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #previousPage,
          [],
          {
            #duration: duration,
            #curve: curve,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i2.ScrollPosition createScrollPosition(
    _i7.ScrollPhysics? physics,
    _i8.ScrollContext? context,
    _i2.ScrollPosition? oldPosition,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createScrollPosition,
          [
            physics,
            context,
            oldPosition,
          ],
        ),
        returnValue: _FakeScrollPosition_0(
          this,
          Invocation.method(
            #createScrollPosition,
            [
              physics,
              context,
              oldPosition,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeScrollPosition_0(
          this,
          Invocation.method(
            #createScrollPosition,
            [
              physics,
              context,
              oldPosition,
            ],
          ),
        ),
      ) as _i2.ScrollPosition);
  @override
  void attach(_i2.ScrollPosition? position) => super.noSuchMethod(
        Invocation.method(
          #attach,
          [position],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> animateTo(
    double? offset, {
    required Duration? duration,
    required _i6.Curve? curve,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #animateTo,
          [offset],
          {
            #duration: duration,
            #curve: curve,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void jumpTo(double? value) => super.noSuchMethod(
        Invocation.method(
          #jumpTo,
          [value],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void detach(_i2.ScrollPosition? position) => super.noSuchMethod(
        Invocation.method(
          #detach,
          [position],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void debugFillDescription(List<String>? description) => super.noSuchMethod(
        Invocation.method(
          #debugFillDescription,
          [description],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i9.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i9.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
