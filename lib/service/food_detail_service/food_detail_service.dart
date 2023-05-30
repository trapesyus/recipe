import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recipe/helper/enum/enum_api/enum_api.dart';
import 'package:recipe/service/food_detail_service/food_detail_service_model.dart';

class FoodDetailService {
  final String apiEndpoint = 'https://api.edamam.com/api/nutrition-data';
  final String apiKey =
      EnumApi.detailApiKey.keyIdName; // API anahtarını buraya ekleyin
  final String appId =
      EnumApi.detailApiId.keyIdName; // App ID'yi buraya ekleyin

  final Dio dio = Dio();

  Future foodDetailService({required foodIdName}) async {
    final String foodId = foodIdName;

    dio.options.queryParameters = {
      'app_id': EnumApi.detailApiId.keyIdName,
      'app_key': EnumApi.detailApiKey.keyIdName
    };
    dio.options.headers['Accept'] = 'application/json';
    log('$apiEndpoint?app_id=$appId&app_key=$apiKey&ingr=$foodId');
    final Response nutritionResponse = await dio
        .get('$apiEndpoint?app_id=$appId&app_key=$apiKey&ingr=$foodId');
    if (nutritionResponse.statusCode != HttpStatus.ok) return;
    final dynamic nutritionData = nutritionResponse.data;
    final FoodDetailServiceModel data =
        FoodDetailServiceModel.fromJson(nutritionData);

    return data;
  }
}
