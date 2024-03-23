import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/date_base.dart';

List<int> shopList = [];

class ShopCar extends StatefulWidget {
  const ShopCar({super.key});
  @override
  State<ShopCar> createState() => _ShopCarState();
}

class _ShopCarState extends State<ShopCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: shopList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (_) {
              setState(() {
                shopList.removeAt(index);
              });
            },
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  catalog_cars[shopList[index]].name,
                  style: TextStyle(fontSize: 24),
                ),
                leading:
                    Image.asset(catalog_cars[shopList[index]].carsPhoto[0]),
                subtitle: Text(
                    style: TextStyle(fontSize: 16),
                    catalog_cars[shopList[index]].price.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
