// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tab_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainTabPageStore on _MainTabPageStore, Store {
  final _$currentTabIdxAtom = Atom(name: '_MainTabPageStore.currentTabIdx');

  @override
  int get currentTabIdx {
    _$currentTabIdxAtom.reportRead();
    return super.currentTabIdx;
  }

  @override
  set currentTabIdx(int value) {
    _$currentTabIdxAtom.reportWrite(value, super.currentTabIdx, () {
      super.currentTabIdx = value;
    });
  }

  @override
  String toString() {
    return '''
currentTabIdx: ${currentTabIdx}
    ''';
  }
}
