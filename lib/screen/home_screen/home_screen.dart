import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:recipe/core/constants/color_constants.dart';
import 'package:recipe/core/extensions/navigate.extension.dart';
import 'package:recipe/core/extensions/padding_extension.dart';
import 'package:recipe/core/extensions/size_extension.dart';
import 'package:recipe/core/widgets/appbar_widget.dart';
import 'package:recipe/core/widgets/icon_button_widget.dart';
import 'package:recipe/core/widgets/label_text_widget.dart';
import 'package:recipe/core/widgets/progress_indicator.dart';
import 'package:recipe/core/widgets/text_button_widget.dart';
import 'package:recipe/core/widgets/text_widget.dart';
import 'package:recipe/core/widgets/textfield_widget.dart';
import 'package:recipe/screen/food_detail_screen/food_detail_screen.dart';
import 'package:recipe/screen/home_screen/home_screen_model/home_screen_model.dart';
import 'package:recipe/service/list_service/recipe_service_list.dart';
import 'package:recipe/service/query_service/recipe.service_query.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenModel _homeScreenModel = HomeScreenModel();

  final RecipeServiceQuery _recipeServiceQuery = RecipeServiceQuery();

  final RecipeServiceList _recipeServiceList = RecipeServiceList();
  @override
  void initState() {
    _homeScreenModel
        .getRecipes()
        .whenComplete(() => _homeScreenModel.isLoading = true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _appBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _label(),
              _search(),
              Expanded(child: _categories()),
              _results(
                  count: _homeScreenModel.isQuery
                      ? _homeScreenModel.queryResults.length
                      : _homeScreenModel.recipes.length),
              _homeScreenModel.isQuery
                  ? Expanded(
                      flex: 14,
                      child: Observer(builder: (context) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: _homeScreenModel.queryResults.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => FoodDetailScreen(
                                      foodImage: _homeScreenModel
                                              .queryResults[index]
                                              .recipe!
                                              .image ??
                                          _homeScreenModel.noneImage,
                                      foodId: _homeScreenModel
                                          .queryResults[index].recipe!.uri!
                                          .split('_')
                                          .last)
                                  .navigateToPushReplacement(context: context),
                              child: Container(
                                width: context.getSizeWidth(size: 0.8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                    image: NetworkImage(_homeScreenModel
                                            .queryResults[index]
                                            .recipe!
                                            .image ??
                                        _homeScreenModel.noneImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomLabelText(
                                        label: _homeScreenModel
                                            .queryResults[index].recipe!.label!)
                                  ],
                                ),
                              ),
                            ).getPaddingOnly(
                                context: context, right: 0.05, bottom: 0.02);
                          },
                        );
                      }))
                  : _homeScreenModel.isLoading
                      ? Expanded(
                          flex: 14,
                          child: Observer(builder: (context) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemCount: _homeScreenModel.recipes.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => FoodDetailScreen(
                                          foodId: _homeScreenModel
                                              .recipes[index].food!.foodId!,
                                          foodImage: _homeScreenModel
                                                  .recipes[index].food!.image ??
                                              _homeScreenModel.noneImage)
                                      .navigateToPushReplacement(
                                          context: context),
                                  child: Container(
                                    width: context.getSizeWidth(size: 0.8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image: NetworkImage(_homeScreenModel
                                                .recipes[index].food!.image ??
                                            'https://t3.ftcdn.net/jpg/04/62/93/66/360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomLabelText(
                                            label: _homeScreenModel
                                                .recipes[index].food!.label!)
                                      ],
                                    ),
                                  ),
                                ).getPaddingOnly(
                                    context: context,
                                    right: 0.05,
                                    bottom: 0.02);
                              },
                            );
                          }))
                      : const Expanded(
                          flex: 14, child: CustomCircularProgress())
            ],
          ).getPaddingOnly(context: context, left: 0.04, right: 0));
    });
  }

  CustomLabelText _label() {
    return CustomLabelText(
      label: 'Get Cooking Today!',
      color: true,
    );
  }

  ListView _categories() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _homeScreenModel.categories.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Observer(builder: (context) {
            return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _homeScreenModel.categoriesActive[
                                _homeScreenModel.categories[index]]!
                            ? ColorConstants.activeIconColor
                            : ColorConstants.hintTextColor),
                    child: CustomTextButton(
                        color: _homeScreenModel.categoriesActive[
                                _homeScreenModel.categories[index]]!
                            ? ColorConstants.whiteColor
                            : ColorConstants.blackColor,
                        text: _homeScreenModel.categories[index],
                        onPressed: () => _homeScreenModel.isActiveCategoryCheck(
                            index: index)))
                .getPaddingOnly(context: context, left: 0.01);
          });
        });
  }

  CustomTextField _search() {
    return CustomTextField(
      controller: _homeScreenModel.queryController,
      fillColor: true,
      hintText: 'Search recipes',
      isIcon: true,
      verticalHeight: 0.02,
      hintTextStyle: true,
      sizeBottom: 0.02,
      isIconTap: true,
      isIconOnTap: () async {
        if (_homeScreenModel.queryController.value.text.isEmpty) return;
        await _homeScreenModel.getQuery(
            queryParameter: _homeScreenModel.queryController.value.text);
        _homeScreenModel.isQueryCheck();
      },
    );
  }

  Row _results({required int count}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: '$count recipes', color: ColorConstants.blackColor),
        Row(
          children: [
            CustomIconButton(
              icon: const Icon(Icons.keyboard_double_arrow_up_sharp),
              onPressed: () {},
              color: ColorConstants.activeIconColor,
            ),
            CustomIconButton(
              icon: const Icon(Icons.keyboard_double_arrow_up_sharp),
              onPressed: () {},
              color: ColorConstants.activeIconColor,
            )
          ],
        )
      ],
    );
  }

  CustomAppBar _appBar() {
    return CustomAppBar(
      leading: CustomIconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          color: ColorConstants.buttonColor),
    );
  }
}
