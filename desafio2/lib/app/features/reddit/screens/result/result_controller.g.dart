// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ResultController on _ResultController, Store {
  Computed<List<String>>? _$titlesComputed;

  @override
  List<String> get titles =>
      (_$titlesComputed ??= Computed<List<String>>(() => super.titles,
              name: '_ResultController.titles'))
          .value;
  Computed<int>? _$errorComputed;

  @override
  int get error => (_$errorComputed ??=
          Computed<int>(() => super.error, name: '_ResultController.error'))
      .value;
  Computed<bool>? _$titlesIsNotEmptyComputed;

  @override
  bool get titlesIsNotEmpty => (_$titlesIsNotEmptyComputed ??= Computed<bool>(
          () => super.titlesIsNotEmpty,
          name: '_ResultController.titlesIsNotEmpty'))
      .value;

  late final _$_ResultControllerActionController =
      ActionController(name: '_ResultController', context: context);

  @override
  void setSearchEmpty() {
    final _$actionInfo = _$_ResultControllerActionController.startAction(
        name: '_ResultController.setSearchEmpty');
    try {
      return super.setSearchEmpty();
    } finally {
      _$_ResultControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titles: ${titles},
error: ${error},
titlesIsNotEmpty: ${titlesIsNotEmpty}
    ''';
  }
}
