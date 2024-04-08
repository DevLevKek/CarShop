import 'profile.dart';
import 'package:flutter/material.dart';
import 'list_of_product.dart';
import 'shop_list.dart';
import 'login.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Login(),
    ),
  );
}

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int bottomindex = 0;
  List<Widget> widgetOptions = <Widget>[
    const ListOfProduct(),
    const ShopCar(),
    const Profile(),
  ];

  void onItemTap(int index) {
    setState(() {
      bottomindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: widgetOptions.elementAt(bottomindex)),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Actay',
            color: Colors.white,
          ),
          // type: BottomNavigationBarType.fixed,
          // enableFeedback: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.car_rental_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                label: "Машины"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                label: "Корзина"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 40,
                  color: Colors.white,
                ),
                label: "Профиль"),
          ],
          currentIndex: bottomindex,
          onTap: onItemTap,
          backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        ),
      ),
    );
  }
}
