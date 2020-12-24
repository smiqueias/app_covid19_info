// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeStore, Store {
  final _$_covidRepositoryAtom = Atom(name: 'HomeStore._covidRepository');

  @override
  CovidRepository get _covidRepository {
    _$_covidRepositoryAtom.reportRead();
    return super._covidRepository;
  }

  @override
  set _covidRepository(CovidRepository value) {
    _$_covidRepositoryAtom.reportWrite(value, super._covidRepository, () {
      super._covidRepository = value;
    });
  }

  final _$fetchAllCasesOfWordlAsyncAction =
      AsyncAction('HomeStore.fetchAllCasesOfWordl');

  @override
  Future fetchAllCasesOfWordl() {
    return _$fetchAllCasesOfWordlAsyncAction
        .run(() => super.fetchAllCasesOfWordl());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
