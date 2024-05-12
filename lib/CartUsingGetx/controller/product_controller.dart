import 'package:flutterfeb/CartUsingGetx/model/cart_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<Products> allProducts = productList
      .map((e) => Products(
          name: e['name'],
          price: e['price'],
          description: e['description'],
          count: e['count'],
          img: e['img']))
      .toList()
      .obs;


}
