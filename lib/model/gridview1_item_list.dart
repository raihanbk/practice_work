final List<Map<String, dynamic>> countryList = [
  {
    'img':
        'https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?cs=srgb&dl=pexels-pixabay-208745.jpg&fm=jpg',
    'text': 'USA',
  },
  {
    'img': 'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg',
    'text': 'ENGLAND',
  },
  {
    'img':
        'https://images.pexels.com/photos/532826/pexels-photo-532826.jpeg?cs=srgb&dl=pexels-pixabay-532826.jpg&fm=jpg',
    'text': 'FRANCE',
  },
  {
    'img':
        'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?cs=srgb&dl=pexels-%D0%B4%D0%BC%D0%B8%D1%82%D1%80%D0%B8%D0%B9-%D1%82%D1%80%D0%B5%D0%BF%D0%BE%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D0%B9-8285167.jpg&fm=jpg',
    'text': 'RUSSIA',
  },
  {
    'img':
        'https://images.pexels.com/photos/1868676/pexels-photo-1868676.jpeg?cs=srgb&dl=pexels-ennvisionn-1868676.jpg&fm=jpg',
    'text': 'CANADA',
  },
];

class CountryGrid {
  String img;
  String text;

  CountryGrid({
    required this.img,
    required this.text,
  });
}

List<CountryGrid> country = countryList
    .map((e) => CountryGrid(img: e['img'], text: e['text']))
    .toList();
