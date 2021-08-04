// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_detail_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeDetailPageStore on _HomeDetailPageStore, Store {
  final _$countAtom = Atom(name: '_HomeDetailPageStore.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$textAtom = Atom(name: '_HomeDetailPageStore.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$_HomeDetailPageStoreActionController =
      ActionController(name: '_HomeDetailPageStore');

  @override
  void increase() {
    final _$actionInfo = _$_HomeDetailPageStoreActionController.startAction(
        name: '_HomeDetailPageStore.increase');
    try {
      return super.increase();
    } finally {
      _$_HomeDetailPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeText(String text) {
    final _$actionInfo = _$_HomeDetailPageStoreActionController.startAction(
        name: '_HomeDetailPageStore.changeText');
    try {
      return super.changeText(text);
    } finally {
      _$_HomeDetailPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count},
text: ${text}
    ''';
  }
}
