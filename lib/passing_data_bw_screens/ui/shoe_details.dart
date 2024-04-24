import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/mycolors.dart';

import '../model/shoe_model.dart';

class ShoeDetails extends StatelessWidget {
  const ShoeDetails({super.key, required this.shoe});

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(shoe.name),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: NetworkImage(shoe.image))),
            ),
            Text(
              shoe.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(shoe.description),
            const SizedBox(height: 25,),
            MaterialButton(
              onPressed: () {},
              color: MyColors.basicColor,
              shape: const StadiumBorder(),
              minWidth: MediaQuery.of(context).size.width,
              height: 40,
              child: const Text(
                'Buy Now',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
