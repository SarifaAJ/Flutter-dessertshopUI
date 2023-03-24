class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String desc;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.desc,
    required this.subMenu,
  });
}

final List<Cake> listCake = [
  Cake(
    id: 2,
    name: 'Japanese Fruit Sandwich',
    price: '30.000',
    imageUrl: 'image/Japanese_fruit_sandwich.jpg',
    isFavorite: false,
    desc:
        'Fruit sandwich adalah sejenis roti lapis yang diisi dengan potongan buah-buahan segar dan dicampur dengan selai atau krim untuk memberikan rasa yang lebih lezat',
    subMenu: 'Cake',
  ),
  Cake(
    id: 4,
    name: 'New York Cheesecake',
    price: '30.000',
    imageUrl: 'image/Newyork_cheesecake.jpg',
    isFavorite: true,
    desc:
        'New York cheesecake adalah cake khas amerika Serikat yang terbuat dari bahan dasar cream cheese, telur, gula, dan tepung, yang dicampur dan dipanggang dengan rasa yang kaya dan lembut dan disajikan dengan dihiasi dengan saus buah, kacang, atau remah roti untuk memberikan cita rasa yang lebih nikmat',
    subMenu: 'Cake',
  ),
  Cake(
    id: 6,
    name: 'Strawberry Shortcake',
    price: '30.000',
    imageUrl: 'image/Strawberry_shortcake.jpg',
    isFavorite: true,
    desc:
        'Strawberry shortcake adalah kue lapis yang terdiri dari 2-3 lapis sponge cake yang diisi dengan krim segar dan potongan stroberi segar di antara setiap lapisannya. Kue ini biasanya dihiasi dengan whipped cream dan potongan stroberi di atasnya untuk memberikan tampilan yang cantik dan segar',
    subMenu: 'Cake',
  ),
];
