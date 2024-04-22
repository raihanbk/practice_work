
import 'package:flutter/material.dart';
import 'package:flutterfeb/model/mm.dart';
import 'package:google_fonts/google_fonts.dart';

class GridView5 extends StatelessWidget {
  const GridView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF115151),
        leading: const Icon(Icons.menu, color: Colors.white,),
        title: Text('Catelog App',
            style:
                GoogleFonts.cabin(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.65, crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: products.length,
          (context, index) => Card(
            shape: const RoundedRectangleBorder(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(products[index].img),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index].productName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(products[index].productType),
                      Row(
                        children: [
                          richText(index,
                              priceText: products[index].oldPrice,
                              textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                            child: richText(index,
                                priceText: products[index].price,
                                textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          richText(index,
                              priceText: products[index].offPrice,
                              textStyle: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      MaterialButton(onPressed: () {},
                        shape: const RoundedRectangleBorder(),
                        color: const Color(0xFF115151), child: const Row(children: [
                        Icon(Icons.shopping_cart_sharp,size: 20,color: Colors.white,),
                        Text(' Add to cart', style: TextStyle(color: Colors.white),)
                      ],),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget richText(int index,
      {required String priceText, required TextStyle textStyle}) {
    return RichText(
      text: TextSpan(
        text: priceText,
        style: textStyle,
      ),
    );
  }
}
