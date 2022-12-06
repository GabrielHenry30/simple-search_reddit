// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RedditController on _RedditController, Store {
  late final _$titlesAtom =
      Atom(name: '_RedditController.titles', context: context);

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
      Atom(name: '_RedditController.isLoading', context: context);

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
      Atom(name: '_RedditController.error', context: context);

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
      AsyncAction('_RedditController.setReddit', context: context);

  @override
  Future<void> setReddit(String theme) {
    return _$setRedditAsyncAction.run(() => super.setReddit(theme));
  }

  late final _$_RedditControllerActionController =
      ActionController(name: '_RedditController', context: context);

  @override
  void listCleanner() {
    final _$actionInfo = _$_RedditControllerActionController.startAction(
        name: '_RedditController.listCleanner');
    try {
      return super.listCleanner();
    } finally {
      _$_RedditControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titles: ${titles},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
