import 'package:mobx/mobx.dart';
import 'package:recipe/service/food_detail_service/food_detail_service.dart';
import 'package:recipe/service/food_detail_service/food_detail_service_model.dart';
part 'food_detail_screen_model.g.dart';

class FoodDetailScreenModel = FoodDetailScreenModelBase
    with _$FoodDetailScreenModel;

//uri dolu healtlabels dolu ingredients dolu totalnutrients kcal sadece labelları al
abstract class FoodDetailScreenModelBase with Store {
  @observable
  bool isLoading = false;
  @observable
  bool isChangeCard = false;
  @observable
  List<String> healthLabels = ObservableList.of([]);
  @observable
  List<String> cautions = ObservableList.of([]);
  @observable
  List<String> dietLabels = ObservableList.of([]);
  @observable
  String uri = '';
  @observable
  String foodName = '';
  @observable
  List<String> nutrients = ObservableList.of([]);
  @observable
  TotalNutrientsKCal totalNutrientsKCal = TotalNutrientsKCal();
  @action
  void isLoadingCheck() {
    isLoading = !isLoading;
  }

  @action
  void isChangeCardCheck() {
    isChangeCard = !isChangeCard;
  }

  @action
  Future<void> foodDetail({required String foodId}) async {
    if (foodId == '') return;
    FoodDetailService foodDetailService = FoodDetailService();
    final FoodDetailServiceModel data =
        await foodDetailService.foodDetailService(foodIdName: foodId);
    data.calories;
    cautions = data.cautions!;

    healthLabels = data.healthLabels ?? [];

    dietLabels = data.dietLabels ?? [];
    uri = data.uri!;

    foodName = data.ingredients?[0].parsed?[0].food ?? 'Food Name Not Found';

    nutrients = [
      data.ingredients?[0].parsed?[0].nutrients?.cA?.label ?? 'No Calcium Data',
      data.ingredients?[0].parsed?[0].nutrients?.cHOCDF?.label ??
          'No Carbohydrate Data',
      data.ingredients?[0].parsed?[0].nutrients?.cHOLE?.label ??
          'No Cholesterol Data',
      data.ingredients?[0].parsed?[0].nutrients?.eNERCKCAL?.label ??
          'No Energy Data',
      data.ingredients?[0].parsed?[0].nutrients?.fAMS?.label ??
          'No Fatty Acids Data, Total Monounsaturated',
      data.ingredients?[0].parsed?[0].nutrients?.fAPU?.label ??
          'No Fatty Acids Data, Total Polyunsaturated',
      data.ingredients?[0].parsed?[0].nutrients?.fASAT?.label ??
          'No Fatty Acids Data, Total Saturated',
      data.ingredients?[0].parsed?[0].nutrients?.fAT?.label ??
          'No Total Lipid Data',
      data.ingredients?[0].parsed?[0].nutrients?.fATRN?.label ??
          'No Fatty Acids Data, Total Trans',
      data.ingredients?[0].parsed?[0].nutrients?.fE?.label ?? 'No Iron Data',
      data.ingredients?[0].parsed?[0].nutrients?.fIBTG?.label ??
          'No Fiber Data, Total Dietary',
      data.ingredients?[0].parsed?[0].nutrients?.fOLAC?.label ??
          'No Folic Acid Data',
      data.ingredients?[0].parsed?[0].nutrients?.fOLDFE?.label ??
          'No Folate Data, DFE',
      data.ingredients?[0].parsed?[0].nutrients?.fOLFD?.label ??
          'No FolFD Data',
      data.ingredients?[0].parsed?[0].nutrients?.k?.label ??
          'No Potassium Data',
      data.ingredients?[0].parsed?[0].nutrients?.mG?.label ??
          'No Magnesium Data',
      data.ingredients?[0].parsed?[0].nutrients?.nA?.label ?? 'No Sodium Data',
      data.ingredients?[0].parsed?[0].nutrients?.nIA?.label ?? 'No Niacin Data',
      data.ingredients?[0].parsed?[0].nutrients?.p?.label ??
          'No Phosphorus Data',
      data.ingredients?[0].parsed?[0].nutrients?.pROCNT?.label ??
          'No Protein Data',
      data.ingredients?[0].parsed?[0].nutrients?.rIBF?.label ??
          'No Riboflavin Data',
      data.ingredients?[0].parsed?[0].nutrients?.sUGAR?.label ??
          'No Sugars Data',
      data.ingredients?[0].parsed?[0].nutrients?.tHIA?.label ??
          'No Thiamin Data',
      data.ingredients?[0].parsed?[0].nutrients?.tOCPHA?.label ??
          'No Vitamin E Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITARAE?.label ??
          'No Vitamin A Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITB12?.label ??
          'No Vitamin B-12 Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITB6A?.label ??
          'No Vitamin B-6 Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITC?.label ??
          'No Vitamin C Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITD?.label ??
          'No Vitamin D Data',
      data.ingredients?[0].parsed?[0].nutrients?.vITK1?.label ??
          'No Vitamin K Data',
      data.ingredients?[0].parsed?[0].nutrients?.wATER?.label ??
          'No Water Data',
      data.ingredients?[0].parsed?[0].nutrients?.zN?.label ?? 'No Zinc Data'
    ];

    totalNutrientsKCal = data.totalNutrientsKCal!;

    // data.ingredients;
    // data.totalCO2Emissions;
    // data.totalDaily;
    // data.totalNutrients;
    //data.totalNutrientsKCal;
    // data.totalWeight;
    // data.uri;
  }
}
