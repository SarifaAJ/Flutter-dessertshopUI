class Mochi {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String desc;
  final String subMenu;

  Mochi({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.desc,
    required this.subMenu,
  });
}

final List<Mochi> listMochi = [
  Mochi(
    id: 1,
    name: 'Daifuku',
    price: '20.000',
    imageUrl: 'image/Daifuku.jpg',
    isFavorite: true,
    desc: 'Daifuku adalah makanan khas Jepang yang terbuat dari tepung mochiko, berisi isian pasta kacang merah dan disisipi buah stroberi utuh',
    subMenu: 'Mochi',
  ),
  Mochi(
    id: 3,
    name: 'Mitarashi Dango',
    price: '20.000',
    imageUrl: 'image/Mitarashi_dango.jpg',
    isFavorite: true,
    desc: 'Mitarashi dango adalah makanan khas Jepang yang terbuat dari bola-bola mochi ditusuk dalam satu batang lidi kayu dan disiram dengan saus mitarashi yang terbuat dari kecap asin, gula, dan mirin, yang memberikan cita rasa manis dan gurih pada dango',
    subMenu: 'Mochi',
  ),
  Mochi(
    id: 5,
    name: 'Raindrop Cake',
    price: '20.000',
    imageUrl: 'image/Raindrop_cake.jpg',
    isFavorite: false,
    desc: 'Raindrop cake adalah sebuah hidangan penutup Jepang yang terdiri dari air dan tepung agar-agar. Raindrop cake biasanya disajikan dengan saus manis seperti sirup gula merah (kuro mitsu), serta taburan kinako (tepung kedelai) atau kacang azuki',
    subMenu: 'Mochi',
  ),
];
