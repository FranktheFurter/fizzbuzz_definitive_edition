// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainstate.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainState on _MainStateBase, Store {
  late final _$numberSystemAtom =
      Atom(name: '_MainStateBase.numberSystem', context: context);

  @override
  int get numberSystem {
    _$numberSystemAtom.reportRead();
    return super.numberSystem;
  }

  @override
  set numberSystem(int value) {
    _$numberSystemAtom.reportWrite(value, super.numberSystem, () {
      super.numberSystem = value;
    });
  }

  @override
  String toString() {
    return '''
numberSystem: ${numberSystem}
    ''';
  }
}
