import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:recipe/helper/enum/enum_api/enum_api.dart';
import 'package:recipe/service/query_service/recipe_service_query_model.dart';

class RecipeServiceQuery {
  final Dio dio = Dio();
  final String apiEndpoint = EnumApi.queryApiUrl.keyIdName;
  Future recipeServiceQuery({required String queryParameter}) async {
    if (queryParameter == '') return;
    final Response response = await dio.get(apiEndpoint,
        queryParameters: {"q": queryParameter},
        options: Options(
            receiveTimeout: const Duration(minutes: 1),
            sendTimeout: const Duration(minutes: 1)));
    switch (response.statusCode) {
      case 429:
        print('istek limitine ulaşıldı');
        break;
      case 200:
        final RecipeServiceQueryModel data =
            RecipeServiceQueryModel.fromJson(response.data);
        log(data.hits![0].recipe!.image.toString());
        return data.hits!;

      default:
        if (response.data == null) {
          print('istek başarısız');
        }
    }
    log('buraya girdi1');
  }
}
