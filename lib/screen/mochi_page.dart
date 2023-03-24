import 'package:flutter/material.dart';
import 'package:online_shop/data/mochi.dart';
import 'package:online_shop/screen/dessert_detail.dart';

class MochiPage extends StatelessWidget {
  const MochiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              itemCount: listMochi.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listMochi[index], context);
              },
            ),
          ),
          const SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(Mochi dessert, context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DessertDetail(
                  assetPath: dessert.imageUrl,
                  dessertprice: dessert.price,
                  dessertname: dessert.name,
                  dessertdesc: dessert.desc,
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 178, 178, 178),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    dessert.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 210, 180, 140),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(255, 210, 180, 140),
                          )
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Expanded(
                child: Hero(
                  tag: dessert.imageUrl,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          dessert.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'Rp ${dessert.price}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 210, 180, 140),
                  fontFamily: 'KleeOne',
                  fontSize: 14.0,
                ),
              ),
              Text(
                dessert.name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 128, 128, 128),
                  fontFamily: 'KleeOne',
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.shopping_basket,
                          color: Color.fromARGB(255, 210, 180, 140),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Beli',
                          style: TextStyle(
                              fontFamily: 'KleeOne',
                              color: Color.fromARGB(255, 210, 180, 140),
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color.fromARGB(255, 210, 180, 140),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'KleeOne',
                              color: Color.fromARGB(255, 210, 180, 140),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: Color.fromARGB(255, 210, 180, 140),
                          size: 16,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
