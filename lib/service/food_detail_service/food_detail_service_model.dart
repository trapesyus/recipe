class FoodDetailServiceModel {
  String? uri;
  int? calories;
  double? totalCO2Emissions;
  double? totalWeight;
  List<String>? dietLabels;
  List<String>? healthLabels;
  List<String>? cautions;
  TotalNutrients? totalNutrients;
  TotalNutrients? totalDaily;
  List<Ingredients>? ingredients;
  TotalNutrientsKCal? totalNutrientsKCal;

  FoodDetailServiceModel(
      {this.uri,
      this.calories,
      this.totalCO2Emissions,
      this.totalWeight,
      this.dietLabels,
      this.healthLabels,
      this.cautions,
      this.totalNutrients,
      this.totalDaily,
      this.ingredients,
      this.totalNutrientsKCal});

  FoodDetailServiceModel.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    calories = json['calories'];
    totalCO2Emissions = json['totalCO2Emissions'];
    totalWeight = json['totalWeight'];
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    totalNutrients = json['totalNutrients'] != null
        ? TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? TotalNutrients.fromJson(json['totalDaily'])
        : null;
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(Ingredients.fromJson(v));
      });
    }
    totalNutrientsKCal = json['totalNutrientsKCal'] != null
        ? TotalNutrientsKCal.fromJson(json['totalNutrientsKCal'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['calories'] = calories;
    data['totalCO2Emissions'] = totalCO2Emissions;
    data['totalWeight'] = totalWeight;

    data['dietLabels'] = dietLabels;

    data['healthLabels'] = healthLabels;

    data['cautions'] = cautions;

    if (totalNutrients != null) {
      data['totalNutrients'] = totalNutrients!.toJson();
    }
    if (totalDaily != null) {
      data['totalDaily'] = totalDaily!.toJson();
    }
    if (ingredients != null) {
      data['ingredients'] = ingredients!.map((v) => v.toJson()).toList();
    }
    if (totalNutrientsKCal != null) {
      data['totalNutrientsKCal'] = totalNutrientsKCal!.toJson();
    }
    return data;
  }
}

class TotalNutrients {
  TotalNutrients();

  TotalNutrients.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class Ingredients {
  String? text;
  List<Parsed>? parsed;

  Ingredients({this.text, this.parsed});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['parsed'] != null) {
      parsed = <Parsed>[];
      json['parsed'].forEach((v) {
        parsed!.add(Parsed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (parsed != null) {
      data['parsed'] = parsed!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parsed {
  double? quantity;
  String? foodMatch;
  String? food;
  String? foodId;
  double? weight;
  double? retainedWeight;
  Nutrients? nutrients;
  String? measureURI;
  String? status;

  Parsed(
      {this.quantity,
      this.foodMatch,
      this.food,
      this.foodId,
      this.weight,
      this.retainedWeight,
      this.nutrients,
      this.measureURI,
      this.status});

  Parsed.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    foodMatch = json['foodMatch'];
    food = json['food'];
    foodId = json['foodId'];
    weight = json['weight'];
    retainedWeight = json['retainedWeight'];
    nutrients = json['nutrients'] != null
        ? Nutrients.fromJson(json['nutrients'])
        : null;
    measureURI = json['measureURI'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['quantity'] = quantity;
    data['foodMatch'] = foodMatch;
    data['food'] = food;
    data['foodId'] = foodId;
    data['weight'] = weight;
    data['retainedWeight'] = retainedWeight;
    if (nutrients != null) {
      data['nutrients'] = nutrients!.toJson();
    }
    data['measureURI'] = measureURI;
    data['status'] = status;
    return data;
  }
}

class Nutrients {
  VITD? vITD;
  VITD? fATRN;
  VITD? eNERCKCAL;
  VITD? fASAT;
  VITD? vITARAE;
  VITD? pROCNT;
  VITD? tOCPHA;
  VITD? cHOLE;
  VITD? cHOCDF;
  VITD? fAT;
  VITD? fIBTG;
  VITD? rIBF;
  VITD? tHIA;
  VITD? fAPU;
  VITD? nIA;
  VITD? vITC;
  VITD? fAMS;
  VITD? vITB6A;
  VITD? vITB12;
  VITD? wATER;
  VITD? k;
  VITD? p;
  VITD? nA;
  VITD? zN;
  VITD? sUGAR;
  VITD? cA;
  VITD? mG;
  VITD? fE;
  VITD? vITK1;
  VITD? fOLFD;
  VITD? fOLAC;
  VITD? fOLDFE;

  Nutrients(
      {this.vITD,
      this.fATRN,
      this.eNERCKCAL,
      this.fASAT,
      this.vITARAE,
      this.pROCNT,
      this.tOCPHA,
      this.cHOLE,
      this.cHOCDF,
      this.fAT,
      this.fIBTG,
      this.rIBF,
      this.tHIA,
      this.fAPU,
      this.nIA,
      this.vITC,
      this.fAMS,
      this.vITB6A,
      this.vITB12,
      this.wATER,
      this.k,
      this.p,
      this.nA,
      this.zN,
      this.sUGAR,
      this.cA,
      this.mG,
      this.fE,
      this.vITK1,
      this.fOLFD,
      this.fOLAC,
      this.fOLDFE});

  Nutrients.fromJson(Map<String, dynamic> json) {
    vITD = json['VITD'] != null ? VITD.fromJson(json['VITD']) : null;
    fATRN = json['FATRN'] != null ? VITD.fromJson(json['FATRN']) : null;
    eNERCKCAL =
        json['ENERC_KCAL'] != null ? VITD.fromJson(json['ENERC_KCAL']) : null;
    fASAT = json['FASAT'] != null ? VITD.fromJson(json['FASAT']) : null;
    vITARAE = json['VITA_RAE'] != null ? VITD.fromJson(json['VITA_RAE']) : null;
    pROCNT = json['PROCNT'] != null ? VITD.fromJson(json['PROCNT']) : null;
    tOCPHA = json['TOCPHA'] != null ? VITD.fromJson(json['TOCPHA']) : null;
    cHOLE = json['CHOLE'] != null ? VITD.fromJson(json['CHOLE']) : null;
    cHOCDF = json['CHOCDF'] != null ? VITD.fromJson(json['CHOCDF']) : null;
    fAT = json['FAT'] != null ? VITD.fromJson(json['FAT']) : null;
    fIBTG = json['FIBTG'] != null ? VITD.fromJson(json['FIBTG']) : null;
    rIBF = json['RIBF'] != null ? VITD.fromJson(json['RIBF']) : null;
    tHIA = json['THIA'] != null ? VITD.fromJson(json['THIA']) : null;
    fAPU = json['FAPU'] != null ? VITD.fromJson(json['FAPU']) : null;
    nIA = json['NIA'] != null ? VITD.fromJson(json['NIA']) : null;
    vITC = json['VITC'] != null ? VITD.fromJson(json['VITC']) : null;
    fAMS = json['FAMS'] != null ? VITD.fromJson(json['FAMS']) : null;
    vITB6A = json['VITB6A'] != null ? VITD.fromJson(json['VITB6A']) : null;
    vITB12 = json['VITB12'] != null ? VITD.fromJson(json['VITB12']) : null;
    wATER = json['WATER'] != null ? VITD.fromJson(json['WATER']) : null;
    k = json['K'] != null ? VITD.fromJson(json['K']) : null;
    p = json['P'] != null ? VITD.fromJson(json['P']) : null;
    nA = json['NA'] != null ? VITD.fromJson(json['NA']) : null;
    zN = json['ZN'] != null ? VITD.fromJson(json['ZN']) : null;
    sUGAR = json['SUGAR'] != null ? VITD.fromJson(json['SUGAR']) : null;
    cA = json['CA'] != null ? VITD.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? VITD.fromJson(json['MG']) : null;
    fE = json['FE'] != null ? VITD.fromJson(json['FE']) : null;
    vITK1 = json['VITK1'] != null ? VITD.fromJson(json['VITK1']) : null;
    fOLFD = json['FOLFD'] != null ? VITD.fromJson(json['FOLFD']) : null;
    fOLAC = json['FOLAC'] != null ? VITD.fromJson(json['FOLAC']) : null;
    fOLDFE = json['FOLDFE'] != null ? VITD.fromJson(json['FOLDFE']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (vITD != null) {
      data['VITD'] = vITD!.toJson();
    }
    if (fATRN != null) {
      data['FATRN'] = fATRN!.toJson();
    }
    if (eNERCKCAL != null) {
      data['ENERC_KCAL'] = eNERCKCAL!.toJson();
    }
    if (fASAT != null) {
      data['FASAT'] = fASAT!.toJson();
    }
    if (vITARAE != null) {
      data['VITA_RAE'] = vITARAE!.toJson();
    }
    if (pROCNT != null) {
      data['PROCNT'] = pROCNT!.toJson();
    }
    if (tOCPHA != null) {
      data['TOCPHA'] = tOCPHA!.toJson();
    }
    if (cHOLE != null) {
      data['CHOLE'] = cHOLE!.toJson();
    }
    if (cHOCDF != null) {
      data['CHOCDF'] = cHOCDF!.toJson();
    }
    if (fAT != null) {
      data['FAT'] = fAT!.toJson();
    }
    if (fIBTG != null) {
      data['FIBTG'] = fIBTG!.toJson();
    }
    if (rIBF != null) {
      data['RIBF'] = rIBF!.toJson();
    }
    if (tHIA != null) {
      data['THIA'] = tHIA!.toJson();
    }
    if (fAPU != null) {
      data['FAPU'] = fAPU!.toJson();
    }
    if (nIA != null) {
      data['NIA'] = nIA!.toJson();
    }
    if (vITC != null) {
      data['VITC'] = vITC!.toJson();
    }
    if (fAMS != null) {
      data['FAMS'] = fAMS!.toJson();
    }
    if (vITB6A != null) {
      data['VITB6A'] = vITB6A!.toJson();
    }
    if (vITB12 != null) {
      data['VITB12'] = vITB12!.toJson();
    }
    if (wATER != null) {
      data['WATER'] = wATER!.toJson();
    }
    if (k != null) {
      data['K'] = k!.toJson();
    }
    if (p != null) {
      data['P'] = p!.toJson();
    }
    if (nA != null) {
      data['NA'] = nA!.toJson();
    }
    if (zN != null) {
      data['ZN'] = zN!.toJson();
    }
    if (sUGAR != null) {
      data['SUGAR'] = sUGAR!.toJson();
    }
    if (cA != null) {
      data['CA'] = cA!.toJson();
    }
    if (mG != null) {
      data['MG'] = mG!.toJson();
    }
    if (fE != null) {
      data['FE'] = fE!.toJson();
    }
    if (vITK1 != null) {
      data['VITK1'] = vITK1!.toJson();
    }
    if (fOLFD != null) {
      data['FOLFD'] = fOLFD!.toJson();
    }
    if (fOLAC != null) {
      data['FOLAC'] = fOLAC!.toJson();
    }
    if (fOLDFE != null) {
      data['FOLDFE'] = fOLDFE!.toJson();
    }
    return data;
  }
}

class VITD {
  String? label;

  String? unit;

  VITD({this.label, this.unit});

  VITD.fromJson(Map<String, dynamic> json) {
    label = json['label'];

    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;

    data['unit'] = unit;
    return data;
  }
}

class TotalNutrientsKCal {
  VITD? eNERCKCAL;
  VITD? pROCNTKCAL;
  VITD? fATKCAL;
  VITD? cHOCDFKCAL;

  TotalNutrientsKCal(
      {this.eNERCKCAL, this.pROCNTKCAL, this.fATKCAL, this.cHOCDFKCAL});

  TotalNutrientsKCal.fromJson(Map<String, dynamic> json) {
    eNERCKCAL =
        json['ENERC_KCAL'] != null ? VITD.fromJson(json['ENERC_KCAL']) : null;
    pROCNTKCAL =
        json['PROCNT_KCAL'] != null ? VITD.fromJson(json['PROCNT_KCAL']) : null;
    fATKCAL = json['FAT_KCAL'] != null ? VITD.fromJson(json['FAT_KCAL']) : null;
    cHOCDFKCAL =
        json['CHOCDF_KCAL'] != null ? VITD.fromJson(json['CHOCDF_KCAL']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eNERCKCAL != null) {
      data['ENERC_KCAL'] = eNERCKCAL!.toJson();
    }
    if (pROCNTKCAL != null) {
      data['PROCNT_KCAL'] = pROCNTKCAL!.toJson();
    }
    if (fATKCAL != null) {
      data['FAT_KCAL'] = fATKCAL!.toJson();
    }
    if (cHOCDFKCAL != null) {
      data['CHOCDF_KCAL'] = cHOCDFKCAL!.toJson();
    }
    return data;
  }
}
