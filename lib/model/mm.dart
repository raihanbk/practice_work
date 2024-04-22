import 'gridview5_items_list.dart';
import 'items_model.dart';

List<Products> products = gridViewItems
    .map((e) => Products(
        img: e['img'],
        productName: e['productName'],
        productType: e['productType'],
        price: e['price'],
        oldPrice: e['oldPrice'],
        offPrice: e['offPrice'],
))
    .toList();
