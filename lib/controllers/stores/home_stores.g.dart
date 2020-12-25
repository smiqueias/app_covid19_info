// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeStore, Store {
  final _$currentIndexAtom = Atom(name: 'HomeStore.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

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

  final _$HomeStoreActionController = ActionController(name: 'HomeStore');

  @override
  dynamic changePage(int index) {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
