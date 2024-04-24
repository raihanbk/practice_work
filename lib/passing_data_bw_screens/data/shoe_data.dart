import '../model/shoe_model.dart';

final List<Map<String, dynamic>> shoeData = [
  {
    'id': 1,
    'name': 'Adidas',
    'image': 'https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg',
    'description': 'Running Shoes \t Gym Tennis Shoes for Men'
  },
  {
    "id": 2,
    'name': 'Nike',
    "image":
        "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
    "description": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
  },
  {
    "id": 3,
    'name': 'Walkaro',
    "image":
        "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
    "description": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
  },
  {
    "id": 4,
    'name': 'RedTape',
    "image":
        "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
    "description": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
  },
  {
    "id": 5,
    'name': 'Crocs',
    "image":
        "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
    "description": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
  },
  {
    "id": 6,
    'name': 'Air',
    "image":
        "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
    "description": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
  },
];

List<Shoe> shoe = shoeData
    .map((e) => Shoe(
        id: e['id'],
        name: e['name'],
        image: e['image'],
        description: e['description']))
    .toList();
