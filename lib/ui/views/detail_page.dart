import 'package:flutter/material.dart';
import 'package:flutter_project2/data/entitiy/products.dart';

class DetailPage extends StatefulWidget {
  Products products;

  DetailPage({required this.products});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.products.product_name,
          style: TextStyle(
              fontFamily: "Bebas",
              fontSize: 36),),
        centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.products.product_image}"),
            Text("${widget.products.prouct_price}",style: TextStyle(fontSize: 36,fontFamily: "Bebas"),)
          ],
        ),
      ),
    );
  }
}
