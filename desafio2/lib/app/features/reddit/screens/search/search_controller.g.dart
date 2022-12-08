// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchController on _SearchController, Store {
  late final _$searchAtom =
      Atom(name: '_SearchController.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$titlesAtom =
      Atom(name: '_SearchController.titles', context: context);

  @override
  List<String> get titles {
    _$titlesAtom.reportRead();
    return super.titles;
  }

  @override
  set titles(List<String> value) {
    _$titlesAtom.reportWrite(value, super.titles, () {
      super.titles = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SearchController.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_SearchController.error', context: context);

  @override
  int get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(int value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$setRedditAsyncAction =
      AsyncAction('_SearchController.setReddit', context: context);

  @override
  Future<void> setReddit(String theme) {
    return _$setRedditAsyncAction.run(() => super.setReddit(theme));
  }

  late final _$_SearchControllerActionController =
      ActionController(name: '_SearchController', context: context);

  @override
  void listCleanner() {
    final _$actionInfo = _$_SearchControllerActionController.startAction(
        name: '_SearchController.listCleanner');
    try {
      return super.listCleanner();
    } finally {
      _$_SearchControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
titles: ${titles},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
