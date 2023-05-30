class RecipeServiceListModel {
  String? text;
  List? parsed;
  List<Hints>? hints;
  Links? lLinks;

  RecipeServiceListModel({this.text, this.parsed, this.hints, this.lLinks});

  RecipeServiceListModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['parsed'] != null) {
      parsed = <Hints>[];
      json['parsed'].forEach((v) {
        parsed!.add(v);
      });
    }
    if (json['hints'] != null) {
      hints = <Hints>[];
      json['hints'].forEach((v) {
        hints!.add(Hints.fromJson(v));
      });
    }
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (parsed != null) {
      data['parsed'] = parsed!.map((v) => v.toJson()).toList();
    }
    if (hints != null) {
      data['hints'] = hints!.map((v) => v.toJson()).toList();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class Hints {
  Food? food;
  List<Measures>? measures;

  Hints({this.food, this.measures});

  Hints.fromJson(Map<String, dynamic> json) {
    food = json['food'] != null ? Food.fromJson(json['food']) : null;
    if (json['measures'] != null) {
      measures = <Measures>[];
      json['measures'].forEach((v) {
        measures!.add(Measures.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (food != null) {
      data['food'] = food!.toJson();
    }
    if (measures != null) {
      data['measures'] = measures!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Food {
  String? foodId;
  String? label;
  String? knownAs;
  Nutrients? nutrients;
  String? category;
  String? categoryLabel;
  String? image;

  Food(
      {this.foodId,
      this.label,
      this.knownAs,
      this.nutrients,
      this.category,
      this.categoryLabel,
      this.image});

  Food.fromJson(Map<String, dynamic> json) {
    foodId = json['foodId'];
    label = json['label'];
    knownAs = json['knownAs'];
    nutrients = json['nutrients'] != null
        ? Nutrients.fromJson(json['nutrients'])
        : null;
    category = json['category'];
    categoryLabel = json['categoryLabel'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foodId'] = foodId;
    data['label'] = label;
    data['knownAs'] = knownAs;
    if (nutrients != null) {
      data['nutrients'] = nutrients!.toJson();
    }
    data['category'] = category;
    data['categoryLabel'] = categoryLabel;
    data['image'] = image;
    return data;
  }
}

class Nutrients {
  double? eNERCKCAL;
  double? pROCNT;
  double? fAT;
  double? cHOCDF;
  double? fIBTG;

  Nutrients({this.eNERCKCAL, this.pROCNT, this.fAT, this.cHOCDF, this.fIBTG});

  Nutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'];
    pROCNT = json['PROCNT'];
    fAT = json['FAT'];
    cHOCDF = json['CHOCDF'];
    fIBTG = json['FIBTG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ENERC_KCAL'] = eNERCKCAL;
    data['PROCNT'] = pROCNT;
    data['FAT'] = fAT;
    data['CHOCDF'] = cHOCDF;
    data['FIBTG'] = fIBTG;
    return data;
  }
}

class Measures {
  String? uri;
  String? label;
  double? weight;
  List<Qualified>? qualified;

  Measures({this.uri, this.label, this.weight, this.qualified});

  Measures.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    weight = json['weight'];
    if (json['qualified'] != null) {
      qualified = <Qualified>[];
      json['qualified'].forEach((v) {
        qualified!.add(Qualified.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['label'] = label;
    data['weight'] = weight;
    if (qualified != null) {
      data['qualified'] = qualified!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Qualified {
  List<Qualifiers>? qualifiers;
  double? weight;

  Qualified({this.qualifiers, this.weight});

  Qualified.fromJson(Map<String, dynamic> json) {
    if (json['qualifiers'] != null) {
      qualifiers = <Qualifiers>[];
      json['qualifiers'].forEach((v) {
        qualifiers!.add(Qualifiers.fromJson(v));
      });
    }
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (qualifiers != null) {
      data['qualifiers'] = qualifiers!.map((v) => v.toJson()).toList();
    }
    data['weight'] = weight;
    return data;
  }
}

class Qualifiers {
  String? uri;
  String? label;

  Qualifiers({this.uri, this.label});

  Qualifiers.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = uri;
    data['label'] = label;
    return data;
  }
}

class Links {
  Next? next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? Next.fromJson(json['next']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (next != null) {
      data['next'] = next!.toJson();
    }
    return data;
  }
}

class Next {
  String? title;
  String? href;

  Next({this.title, this.href});

  Next.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['href'] = href;
    return data;
  }
}
