class Products {
  final String name;
  final String price;
  final String description;
  final int count;
  final String img;

  Products({
    required this.name,
    required this.price,
    required this.description,
    required this.count,
    required this.img,
});
}

List<Map<String, dynamic>> productList = [
  {
    'name': 'Product 1',
    'description': 'Description of Product 1 with five words only',
    'price': 10.99,
    'count' : 0,
    'image': 'assets/images/product1.jpg', // Example image path
  },
  {
    'name': 'Product 2',
    'description': 'Description of Product 2 with five words only',
    'price': 19.99,
    'count' : 0,
    'image': 'assets/images/product2.jpg', // Example image path
  },
  {
    'name': 'Product 3',
    'description': 'Description of Product 3 with five words only',
    'price': 5.99,
    'count' : 0,
    'image': 'assets/images/product3.jpg', // Example image path
  },

];