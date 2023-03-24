class IceCream {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String desc;
  final String subMenu;

  IceCream({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.desc,
    required this.subMenu,
  });
}

final List<IceCream> listIceCream = [
  IceCream(
    id: 6,
    name: 'Strawberry Parfait',
    price: '20.000',
    imageUrl: 'image/Strawberry_parfait.jpg',
    isFavorite: true,
    desc: 'Strawberry parfait adalah hidangan penutup yang terdiri dari lapisan-lapisan yogurt, granola, potongan stroberi segar, dan whipped cream yang diatur secara bergantian di dalam gelas atau mangkuk. Parfait ini biasanya dihiasi dengan taburan kacang atau sirup gula, dan ditambah potongan buah-buahan lainnya',
    subMenu: 'Ice Cream',
  ),
  IceCream(
    id: 7,
    name: 'Chocolate Parfait',
    price: '20.000',
    imageUrl: 'image/Chocolate_parfait.jpeg',
    isFavorite: false,
    desc:
        'Chocolate parfait adalah hidangan penutup yang terdiri dari lapisan-lapisan es krim cokelat, whipped cream, cokelat serut, dan saus cokelat yang diatur secara bergantian di dalam gelas atau mangkuk. Parfait ini juga dapat ditambahkan dengan potongan buah seperti pisang atau stroberi dan kacang-kacangan seperti almond atau kacang mete',
    subMenu: 'IceCream',
  ),
];
