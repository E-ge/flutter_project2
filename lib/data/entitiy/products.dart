class Products {
  int product_id;
  String product_name;
  String product_image;
  double prouct_price;

  Products({
    required this.product_id,
    required this.product_name,
    required this.product_image,
    required this.prouct_price
});

}
Future<List<Products>> productsLoad() async{
  var productsList = <Products>[];
  var p1 = Products(product_id: 1, product_name: "MACBOOK PRO", product_image: "apple.jpg", prouct_price: 11.999);
  var p2 = Products(product_id: 2, product_name: "ASUS PRO ART", product_image: "asus.jpg", prouct_price: 15.999);
  var p3 = Products(product_id: 3, product_name: "DELL WORKSTATION", product_image: "dell.jpg", prouct_price: 13.999);
  var p4 = Products(product_id: 4, product_name: "IPHONE 16 PRO MAX", product_image: "iphone.jpg", prouct_price: 1.999);
  var p5 = Products(product_id: 5, product_name: "MSI GAMING", product_image: "msi.jpg", prouct_price: 9.999);
  var p6 = Products(product_id: 6, product_name: "LENOVO WORKSTATION", product_image: "lenovo.jpg", prouct_price: 11.999);
  var p7 = Products(product_id: 7, product_name: "SAMSUNG Z FOLD", product_image: "samsung.jpg", prouct_price: 1.799);

  productsList.add(p1);
  productsList.add(p2);
  productsList.add(p3);
  productsList.add(p4);
  productsList.add(p5);
  productsList.add(p6);
  productsList.add(p7);
  return productsList;
}