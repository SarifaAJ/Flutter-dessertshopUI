import 'package:flutter/material.dart';
import 'package:online_shop/screen/cake_page.dart';
import 'package:online_shop/screen/icecream_page.dart';
import 'package:online_shop/screen/mochi_page.dart';
import 'package:online_shop/widget/navbar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Dessert Cottage',
          style: TextStyle(
            fontFamily: 'Sacramento',
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: [
          const SizedBox(height: 10.0),
          const Text('Stressed is Desserts spelled backward',
              style: TextStyle(
                  fontFamily: 'KleeOne',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15.0),
          Center(
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color.fromARGB(255, 210, 180, 140),
              labelPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              unselectedLabelColor: const Color.fromARGB(255, 128, 128, 128),
              tabs: const [
                Tab(
                  child: Text('Cake',
                      style: TextStyle(
                        fontFamily: 'KleeOne',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Mochi',
                      style: TextStyle(
                        fontFamily: 'KleeOne',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Ice Cream',
                      style: TextStyle(
                        fontFamily: 'KleeOne',
                        fontSize: 20.0,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CakePage(),
                MochiPage(),
                IceCreamPage(),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 210, 180, 140),
        child: const Icon(Icons.fastfood),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
