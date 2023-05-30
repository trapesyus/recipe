import 'package:dio/dio.dart';
import 'package:recipe/service/list_service/recipe_service_list_model.dart';

import '../../helper/enum/enum_api/enum_api.dart';

class RecipeServiceList {
  final Dio dio = Dio();
  final String url = EnumApi.listApiUrl.keyIdName;

  Future<List<Hints>> recipeServiceList() async {
    dio.options.headers['Accept'] = 'application/json';
    final Response response = await dio.get(url);
    final dynamic jsonData = response.data;
    final RecipeServiceListModel deneme =
        RecipeServiceListModel.fromJson(jsonData);
    print(deneme.hints![0].food!.foodId!.toString());
    return deneme.hints!;
  }
}
