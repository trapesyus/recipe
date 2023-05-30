// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FoodDetailScreenModel on FoodDetailScreenModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'FoodDetailScreenModelBase.isLoading', context: context);

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

  late final _$isChangeCardAtom =
      Atom(name: 'FoodDetailScreenModelBase.isChangeCard', context: context);

  @override
  bool get isChangeCard {
    _$isChangeCardAtom.reportRead();
    return super.isChangeCard;
  }

  @override
  set isChangeCard(bool value) {
    _$isChangeCardAtom.reportWrite(value, super.isChangeCard, () {
      super.isChangeCard = value;
    });
  }

  late final _$healthLabelsAtom =
      Atom(name: 'FoodDetailScreenModelBase.healthLabels', context: context);

  @override
  List<String> get healthLabels {
    _$healthLabelsAtom.reportRead();
    return super.healthLabels;
  }

  @override
  set healthLabels(List<String> value) {
    _$healthLabelsAtom.reportWrite(value, super.healthLabels, () {
      super.healthLabels = value;
    });
  }

  late final _$cautionsAtom =
      Atom(name: 'FoodDetailScreenModelBase.cautions', context: context);

  @override
  List<String> get cautions {
    _$cautionsAtom.reportRead();
    return super.cautions;
  }

  @override
  set cautions(List<String> value) {
    _$cautionsAtom.reportWrite(value, super.cautions, () {
      super.cautions = value;
    });
  }

  late final _$dietLabelsAtom =
      Atom(name: 'FoodDetailScreenModelBase.dietLabels', context: context);

  @override
  List<String> get dietLabels {
    _$dietLabelsAtom.reportRead();
    return super.dietLabels;
  }

  @override
  set dietLabels(List<String> value) {
    _$dietLabelsAtom.reportWrite(value, super.dietLabels, () {
      super.dietLabels = value;
    });
  }

  late final _$uriAtom =
      Atom(name: 'FoodDetailScreenModelBase.uri', context: context);

  @override
  String get uri {
    _$uriAtom.reportRead();
    return super.uri;
  }

  @override
  set uri(String value) {
    _$uriAtom.reportWrite(value, super.uri, () {
      super.uri = value;
    });
  }

  late final _$foodNameAtom =
      Atom(name: 'FoodDetailScreenModelBase.foodName', context: context);

  @override
  String get foodName {
    _$foodNameAtom.reportRead();
    return super.foodName;
  }

  @override
  set foodName(String value) {
    _$foodNameAtom.reportWrite(value, super.foodName, () {
      super.foodName = value;
    });
  }

  late final _$nutrientsAtom =
      Atom(name: 'FoodDetailScreenModelBase.nutrients', context: context);

  @override
  List<String> get nutrients {
    _$nutrientsAtom.reportRead();
    return super.nutrients;
  }

  @override
  set nutrients(List<String> value) {
    _$nutrientsAtom.reportWrite(value, super.nutrients, () {
      super.nutrients = value;
    });
  }

  late final _$totalNutrientsKCalAtom = Atom(
      name: 'FoodDetailScreenModelBase.totalNutrientsKCal', context: context);

  @override
  TotalNutrientsKCal get totalNutrientsKCal {
    _$totalNutrientsKCalAtom.reportRead();
    return super.totalNutrientsKCal;
  }

  @override
  set totalNutrientsKCal(TotalNutrientsKCal value) {
    _$totalNutrientsKCalAtom.reportWrite(value, super.totalNutrientsKCal, () {
      super.totalNutrientsKCal = value;
    });
  }

  late final _$foodDetailAsyncAction =
      AsyncAction('FoodDetailScreenModelBase.foodDetail', context: context);

  @override
  Future<void> foodDetail({required String foodId}) {
    return _$foodDetailAsyncAction.run(() => super.foodDetail(foodId: foodId));
  }

  late final _$FoodDetailScreenModelBaseActionController =
      ActionController(name: 'FoodDetailScreenModelBase', context: context);

  @override
  void isLoadingCheck() {
    final _$actionInfo = _$FoodDetailScreenModelBaseActionController
        .startAction(name: 'FoodDetailScreenModelBase.isLoadingCheck');
    try {
      return super.isLoadingCheck();
    } finally {
      _$FoodDetailScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isChangeCardCheck() {
    final _$actionInfo = _$FoodDetailScreenModelBaseActionController
        .startAction(name: 'FoodDetailScreenModelBase.isChangeCardCheck');
    try {
      return super.isChangeCardCheck();
    } finally {
      _$FoodDetailScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isChangeCard: ${isChangeCard},
healthLabels: ${healthLabels},
cautions: ${cautions},
dietLabels: ${dietLabels},
uri: ${uri},
foodName: ${foodName},
nutrients: ${nutrients},
totalNutrientsKCal: ${totalNutrientsKCal}
    ''';
  }
}
