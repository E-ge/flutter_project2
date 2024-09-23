import 'package:flutter/material.dart';
import 'package:flutter_project2/data/entitiy/products.dart';
import 'package:flutter_project2/ui/views/detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("P R O D U C T S",
          style: TextStyle(
              fontFamily: "Bebas",
              fontSize: 36),),
        centerTitle: true,),
      body: FutureBuilder<List<Products>>(
        future: productsLoad(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var productsList = snapshot.data;
            return ListView.builder(
              itemCount: productsList!.length,
              itemBuilder: (context,index){
                var product = productsList[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) =>
                    DetailPage(products: product)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(width: 128,height: 128,
                              child: Image.asset("images/${product.product_image}")),
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.product_name, style: TextStyle(fontSize: 26, fontFamily: "Bebas"),),
                            Text("${product.prouct_price.toString()} TL",style: TextStyle(fontSize: 26,fontFamily: "Bebas"),),
                            ElevatedButton(onPressed: (){
                              print("${product.product_name} ADD TO Cart success");
                            }, child: Text("ADD TO CART",style: TextStyle(fontFamily: "Bebas",fontSize: 18),))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
