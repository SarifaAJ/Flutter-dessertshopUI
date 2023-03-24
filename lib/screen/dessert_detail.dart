import 'package:flutter/material.dart';
import 'package:online_shop/widget/navbar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DessertDetail extends StatelessWidget {
  final String assetPath;
  final String dessertprice;
  final String dessertname;
  final String dessertdesc;

  const DessertDetail({
    Key? key,
    required this.assetPath,
    required this.dessertprice,
    required this.dessertname,
    required this.dessertdesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 128, 128, 128),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Pilihan',
          style: TextStyle(
            fontFamily: 'KleeOne',
            fontSize: 20.0,
            color: Color.fromARGB(255, 95, 75, 48),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color.fromARGB(255, 128, 128, 128),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20.0
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Hero(
                tag: assetPath,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    height: height ,
                    width: width ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(assetPath),
                      ),
                    ),
                  ),
                ),
              )),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              'Rp $dessertprice',
              style: const TextStyle(
                fontFamily: 'KleeOne',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 210, 180, 140),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              dessertname,
              style: const TextStyle(
                fontFamily: 'KleeOne',
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                dessertdesc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'KleeOne',
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 78, 78, 78),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color.fromARGB(255, 210, 180, 140),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 10
                    ),
                    Text(
                      'Pesan Via WhatApp',
                      style: TextStyle(
                          fontFamily: 'KleeOne',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 210, 180, 140),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
