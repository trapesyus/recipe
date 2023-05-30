enum EnumApi {
  queryApiKey("15d0452403df2e5417e180a6bb4b9edf"),
  queryApiId("be5422b2"),
  queryApiUrl(
      'https://api.edamam.com/api/recipes/v2?type=public&app_id=be5422b2&app_key=15d0452403df2e5417e180a6bb4b9edf'),

  listApiKey("24a272bf09cb1eb9adba62bd83f490cd"),
  listApiId("5b43d35f"),
  listApiUrl(
      'https://api.edamam.com/api/food-database/v2/parser?app_key=24a272bf09cb1eb9adba62bd83f490cd&app_id=5b43d35f'),

  detailApiKey("64db47e7cb159afcdd89b1d34193e89a"),
  detailApiId("1517cb6b"),
  detailApiUrl(
      "https://api.edamam.com/api/nutrition-data?app_id=1517cb6b&app_key=64db47e7cb159afcdd89b1d34193e89a&ingr=");

  final String keyIdName;
  const EnumApi(this.keyIdName);
}
