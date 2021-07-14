// Product Type
ProductType productType1 = ProductType(
    name: "Angled Abutment",
    wareHouseCode: "C020100523",
    articleNumber: "AAB154515HG",
    mrp: 1000,
    count: 0);

ProductType productType2 = ProductType(
    name: "Angled Abutment",
    wareHouseCode: "C020100879",
    articleNumber: "IHAB6006N",
    mrp: 1000,
    count: 0);

ProductType productType3 = ProductType(
    name: "IOS Healing Abutment",
    wareHouseCode: "C020100523",
    articleNumber: "AAB154515HG",
    mrp: 1000,
    count: 0);

ProductType productType4 = ProductType(
    name: "IOS Healing Abutment",
    wareHouseCode: "C020100889",
    articleNumber: "IHAB6008H",
    mrp: 1000,
    count: 0);

ProductType productType5 = ProductType(
    name: "Dual Abutment",
    wareHouseCode: "C021900434",
    articleNumber: "GDAB6520AR(H)",
    mrp: 1000,
    count: 0);

ProductType productType6 = ProductType(
    name: "Slim Onebody Angled Abutment",
    wareHouseCode: "C020400003",
    articleNumber: "IUA153720",
    mrp: 1000,
    count: 0);

ProductType productType7 = ProductType(
    name: "Slim Onebody Angled Abutment",
    wareHouseCode: "C020400004",
    articleNumber: "IUA253720",
    mrp: 1000,
    count: 0);

ProductType productType8 = ProductType(
    name: "Fixture",
    wareHouseCode: "C020400004",
    articleNumber: "IUA253720",
    mrp: 1000,
    count: 0);

ProductType productType9 = ProductType(
    name: "Fixture",
    wareHouseCode: "C010300856",
    articleNumber: "IUA253720",
    mrp: 1200,
    count: 0);

ProductType productType10 = ProductType(
    name: "Impression Coping",
    wareHouseCode: "C031900139",
    articleNumber: "IUA253720",
    mrp: 1000,
    count: 0);

// produt range
ProductRange productRange1 = ProductRange(
    name: "superLine",
    productType: [productType1, productType2, productType3, productType4]);

ProductRange productRange2 =
    ProductRange(name: "Slimline", productType: [productType8]);

ProductRange productRange3 =
    ProductRange(name: "NR Line", productType: [productType9, productType10]);

// Product category
ProductCategory productCategory =
    ProductCategory(name: "Dental Abutment", productRange: [productRange1]);

ProductCategory productCategory2 =
    ProductCategory(name: "Dental Implant", productRange: [productRange2]);

ProductCategory productCategory3 =
    ProductCategory(name: "Dental Instrument", productRange: [productRange3]);

//  Dentium Products
DentiumProduct dentiumProduct = DentiumProduct(
    productCategories: [productCategory, productCategory2, productCategory3]);

// ========================================> model class
class DentiumProduct {
  List<ProductCategory>? productCategories;

  DentiumProduct({this.productCategories});
}

class ProductCategory {
  String? name;
  List<ProductRange>? productRange;
  ProductCategory({this.name, this.productRange});
}

class ProductRange {
  String? name;
  List<ProductType>? productType;

  ProductRange({
    this.productType,
    this.name,
  });
}

class ProductType {
  String? name;
  String? wareHouseCode;
  String? articleNumber;
  double? mrp;
  bool isChecked;
  int? count;

  ProductType(
      {this.name,
      this.wareHouseCode,
      this.articleNumber,
      this.mrp,
      this.isChecked = false,
      this.count});
}
