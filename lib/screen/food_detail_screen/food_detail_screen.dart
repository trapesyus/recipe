import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:recipe/core/constants/color_constants.dart';
import 'package:recipe/core/extensions/navigate.extension.dart';
import 'package:recipe/core/extensions/padding_extension.dart';
import 'package:recipe/core/extensions/size_extension.dart';
import 'package:recipe/core/widgets/appbar_widget.dart';
import 'package:recipe/core/widgets/icon_button_widget.dart';
import 'package:recipe/core/widgets/label_text_widget.dart';
import 'package:recipe/core/widgets/text_widget.dart';
import 'package:recipe/screen/food_detail_screen/food_detail_screen_model.dart';
import 'package:recipe/screen/home_screen/home_screen.dart';

class FoodDetailScreen extends StatefulWidget {
  final String foodId;
  final String foodImage;
  const FoodDetailScreen({super.key, this.foodId = '', this.foodImage = ''});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  final FoodDetailScreenModel _fotoDetailScreenModel = FoodDetailScreenModel();
  @override
  void initState() {
    _fotoDetailScreenModel
        .foodDetail(foodId: widget.foodId)
        .whenComplete(() => null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
              top: context.getSizeHeight(size: 0.01),
              left: context.getSizeWidth(size: 0.01),
              right: context.getSizeWidth(size: 0.01),
              child: Observer(builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                            fontSize: 18,
                            text: _fotoDetailScreenModel.foodName,
                            isBold: false,
                            color: ColorConstants.blackColor)
                        .getPaddingOnly(context: context, bottom: 0.01),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          widget.foodImage,
                          fit: BoxFit.fill,
                        )).getPaddingOnly(context: context, bottom: 0.02),
                    Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.hintTextColor,
                            borderRadius: BorderRadius.circular(6)),
                        width: context.getSizeWidth(size: 0.8),
                        height: context.getSizeHeight(size: 0.09),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 10,
                          itemBuilder: (context, index) => const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                              .getPaddingOnly(context: context, right: 0.01)
                              .getPaddingOnly(
                                  context: context,
                                  left: 0.02,
                                  right: 0.01,
                                  top: 0.005),
                        ))
                  ],
                );
              })),
          Positioned(
              bottom: context.getSizeHeight(size: 0.01),
              left: context.getSizeWidth(size: 0.04),
              right: context.getSizeWidth(size: 0.04),
              top: context.getSizeHeight(size: 0.53),
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.textContentInactiveColor,
                ),
                duration: const Duration(seconds: 2),
                child: Observer(builder: (_) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomLabelText(
                            label: _fotoDetailScreenModel.isChangeCard
                                ? 'Health Labels'
                                : 'Nutrients',
                          ),
                          CustomIconButton(
                            icon: const Icon(
                                CupertinoIcons.arrow_turn_right_down),
                            onPressed: () =>
                                _fotoDetailScreenModel.isChangeCardCheck(),
                            color: ColorConstants.activeIconColor,
                          )
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: _fotoDetailScreenModel.isChangeCard
                                ? _fotoDetailScreenModel.healthLabels.length
                                : _fotoDetailScreenModel.nutrients.length,
                            itemBuilder: (context, index) {
                              return CustomText(
                                  text: _fotoDetailScreenModel.isChangeCard
                                      ? _fotoDetailScreenModel
                                          .healthLabels[index]
                                      : _fotoDetailScreenModel.nutrients[index],
                                  color: ColorConstants.blackColor);
                            }),
                      ),
                    ],
                  ).getPaddingOnly(context: context, left: 0.05);
                }),
              )),
          Positioned(
              bottom: context.getSizeHeight(size: 0.01),
              left: context.getSizeWidth(size: 0.04),
              right: context.getSizeWidth(size: 0.04),
              top: context.getSizeHeight(size: 0.6),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.textContentActiveColor,
                ),
                child: Observer(builder: (_) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomLabelText(
                            label: _fotoDetailScreenModel.isChangeCard
                                ? 'Nutrients'
                                : 'Health Labels',
                          ),
                          CustomIconButton(
                            icon:
                                const Icon(CupertinoIcons.arrow_turn_right_up),
                            onPressed: () =>
                                _fotoDetailScreenModel.isChangeCardCheck(),
                            color: ColorConstants.activeIconColor,
                          )
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: _fotoDetailScreenModel.isChangeCard
                                ? _fotoDetailScreenModel.nutrients.length
                                : _fotoDetailScreenModel.healthLabels.length,
                            itemBuilder: (context, index) {
                              return CustomText(
                                  text: _fotoDetailScreenModel.isChangeCard
                                      ? _fotoDetailScreenModel.nutrients[index]
                                      : _fotoDetailScreenModel
                                          .healthLabels[index],
                                  color: ColorConstants.blackColor);
                            }),
                      ),
                    ],
                  ).getPaddingOnly(context: context, left: 0.05);
                }),
              )),
        ],
      ).getPaddingOnly(context: context, left: 0.04, right: 0.04),
    );
  }

  CustomText _baslik() {
    return CustomText(
      text: 'Yiyecek Başlığı',
      color: ColorConstants.blackColor,
      isBold: true,
      fontSize: 16,
    );
  }

  CustomAppBar _appBar(BuildContext context) {
    return CustomAppBar(
      leading: CustomIconButton(
          icon: const Icon(CupertinoIcons.back),
          color: ColorConstants.activeIconColor,
          onPressed: () =>
              const HomeScreen().navigateToPushReplacement(context: context)),
      centerTitle: true,
      title: 'Recipe',
      titleStyle: true,
      actions: [
        CustomIconButton(
            color: ColorConstants.activeIconColor,
            icon: const Icon(CupertinoIcons.heart),
            onPressed: () {})
      ],
    );
  }
}
