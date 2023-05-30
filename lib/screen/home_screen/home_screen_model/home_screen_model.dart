import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:recipe/service/list_service/recipe_service_list_model.dart';
import 'package:recipe/service/query_service/recipe.service_query.dart';

import '../../../service/list_service/recipe_service_list.dart';
import '../../../service/query_service/recipe_service_query_model.dart';
part 'home_screen_model.g.dart';

class HomeScreenModel = HomeScreenModelBase with _$HomeScreenModel;

abstract class HomeScreenModelBase with Store {
  String noneImage =
      'https://t3.ftcdn.net/jpg/04/62/93/66/360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg';
  @observable
  TextEditingController queryController = TextEditingController();
  @observable
  bool isActiveCategory = false;
  @observable
  bool isLoading = false;
  @observable
  List categories = ObservableList.of(['All', 'Breakfast', 'Dinner']);

  @observable
  Map<String, bool> categoriesActive =
      ObservableMap.of({'All': true, 'Breakfast': false, 'Dinner': false});
  @observable
  ObservableList<Hints> recipes = ObservableList.of([]);
  @observable
  List<Hits> queryResults = ObservableList.of([]);
  @observable
  bool isQuery = false;
  @action
  void isLoadingCheck() {
    isLoading = !isLoading;
  }

  @action
  void isQueryCheck() {
    isQuery = !isQuery;
  }

  @action
  void isActiveCategoryCheck({required int index}) {
    for (var element in categoriesActive.keys) {
      if (element == categories[index]) {
        categoriesActive[element] =
            categoriesActive[element] == false ? true : false;
      } else {
        categoriesActive[element] = false;
      }
    }
  }

  Future<void> getRecipes() async {
    RecipeServiceList recipeServiceList = RecipeServiceList();
    recipes.addAll(await recipeServiceList.recipeServiceList());
    log(recipes[0].food!.image.toString());
    log(recipes.length.toString());
    for (var element in recipes) {
      log(element.food!.image ?? 'yok');
      log(element.food!.foodId!);
    }
  }

  Future<void> getQuery({required String queryParameter}) async {
    RecipeServiceQuery recipeServiceQuery = RecipeServiceQuery();
    queryResults = await recipeServiceQuery.recipeServiceQuery(
        queryParameter: queryParameter);
  }
}
