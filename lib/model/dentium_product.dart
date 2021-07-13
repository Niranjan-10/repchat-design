Product product1 = Product(
  wareHouseCode: "C020100523",
  articleNumber: "AAB154515HG",
  mrp: 1000,
);

Product product2 = Product(
  wareHouseCode: "C020100879",
  articleNumber: "IHAB6006N",
  mrp: 1000,
);
Product product3 = Product(
  wareHouseCode: "C020100523",
  articleNumber: "AAB154515HG",
  mrp: 1000,
);
Product product4 = Product(
  wareHouseCode: "C020100889",
  articleNumber: "IHAB6008H",
  mrp: 1000,
);
Product product5 = Product(
  wareHouseCode: "C021900434",
  articleNumber: "GDAB6520AR(H)",
  mrp: 1000,
);
Product product6 = Product(
  wareHouseCode: "C020400003",
  articleNumber: "IUA153720",
  mrp: 1000,
);
Product product7 = Product(
  wareHouseCode: "C020400004",
  articleNumber: "IUA253720",
  mrp: 1000,
);

ProductType productType1 =
    ProductType(name: "Angled Abutment", products: [product1, product2]);
ProductType productType2 =
    ProductType(name: "IOS Healing Abutment", products: [product3, product4]);
ProductType productType3 =
    ProductType(name: "Dual Abutment", products: [product5]);
ProductType productType4 = ProductType(
    name: "Slim Onebody Angled Abutment", products: [product6, product7]);

ProductRange productRange1 =
    ProductRange(name: "superLine", productType: [productType1, productType2]);

ProductRange productRange2 =
    ProductRange(name: "NR Line", productType: [productType3]);

ProductRange productRange3 =
    ProductRange(name: "Slimline", productType: [productType4]);

ProductCategory productCategory = ProductCategory(
    name: "Dental Abutment",
    productRange: [productRange1, productRange2, productRange3]);

DentiumProduct dentiumProduct =
    DentiumProduct(productCategories: [productCategory]);

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

  ProductRange({this.productType, this.name});
}

class ProductType {
  String? name;
  List<Product>? products;

  ProductType({this.name, this.products});
}

class Product {
  String? wareHouseCode;
  String? articleNumber;
  double? mrp;
  Product({this.articleNumber, this.mrp, this.wareHouseCode});
}
