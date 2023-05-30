// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on HomeScreenModelBase, Store {
  late final _$queryControllerAtom =
      Atom(name: 'HomeScreenModelBase.queryController', context: context);

  @override
  TextEditingController get queryController {
    _$queryControllerAtom.reportRead();
    return super.queryController;
  }

  @override
  set queryController(TextEditingController value) {
    _$queryControllerAtom.reportWrite(value, super.queryController, () {
      super.queryController = value;
    });
  }

  late final _$isActiveCategoryAtom =
      Atom(name: 'HomeScreenModelBase.isActiveCategory', context: context);

  @override
  bool get isActiveCategory {
    _$isActiveCategoryAtom.reportRead();
    return super.isActiveCategory;
  }

  @override
  set isActiveCategory(bool value) {
    _$isActiveCategoryAtom.reportWrite(value, super.isActiveCategory, () {
      super.isActiveCategory = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomeScreenModelBase.isLoading', context: context);

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

  late final _$categoriesAtom =
      Atom(name: 'HomeScreenModelBase.categories', context: context);

  @override
  List<dynamic> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<dynamic> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$categoriesActiveAtom =
      Atom(name: 'HomeScreenModelBase.categoriesActive', context: context);

  @override
  Map<String, bool> get categoriesActive {
    _$categoriesActiveAtom.reportRead();
    return super.categoriesActive;
  }

  @override
  set categoriesActive(Map<String, bool> value) {
    _$categoriesActiveAtom.reportWrite(value, super.categoriesActive, () {
      super.categoriesActive = value;
    });
  }

  late final _$recipesAtom =
      Atom(name: 'HomeScreenModelBase.recipes', context: context);

  @override
  ObservableList<Hints> get recipes {
    _$recipesAtom.reportRead();
    return super.recipes;
  }

  @override
  set recipes(ObservableList<Hints> value) {
    _$recipesAtom.reportWrite(value, super.recipes, () {
      super.recipes = value;
    });
  }

  late final _$queryResultsAtom =
      Atom(name: 'HomeScreenModelBase.queryResults', context: context);

  @override
  List<Hits> get queryResults {
    _$queryResultsAtom.reportRead();
    return super.queryResults;
  }

  @override
  set queryResults(List<Hits> value) {
    _$queryResultsAtom.reportWrite(value, super.queryResults, () {
      super.queryResults = value;
    });
  }

  late final _$isQueryAtom =
      Atom(name: 'HomeScreenModelBase.isQuery', context: context);

  @override
  bool get isQuery {
    _$isQueryAtom.reportRead();
    return super.isQuery;
  }

  @override
  set isQuery(bool value) {
    _$isQueryAtom.reportWrite(value, super.isQuery, () {
      super.isQuery = value;
    });
  }

  late final _$HomeScreenModelBaseActionController =
      ActionController(name: 'HomeScreenModelBase', context: context);

  @override
  void isLoadingCheck() {
    final _$actionInfo = _$HomeScreenModelBaseActionController.startAction(
        name: 'HomeScreenModelBase.isLoadingCheck');
    try {
      return super.isLoadingCheck();
    } finally {
      _$HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isQueryCheck() {
    final _$actionInfo = _$HomeScreenModelBaseActionController.startAction(
        name: 'HomeScreenModelBase.isQueryCheck');
    try {
      return super.isQueryCheck();
    } finally {
      _$HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isActiveCategoryCheck({required int index}) {
    final _$actionInfo = _$HomeScreenModelBaseActionController.startAction(
        name: 'HomeScreenModelBase.isActiveCategoryCheck');
    try {
      return super.isActiveCategoryCheck(index: index);
    } finally {
      _$HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
queryController: ${queryController},
isActiveCategory: ${isActiveCategory},
isLoading: ${isLoading},
categories: ${categories},
categoriesActive: ${categoriesActive},
recipes: ${recipes},
queryResults: ${queryResults},
isQuery: ${isQuery}
    ''';
  }
}
