import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/date_base.dart';

List<int> shopList = [];
List<List<int>> Tezt = [];

TestOne(){
  Tezt[0][1] = 0;
  print(Tezt[0][1]);
}


sumPriceCar() {
  double summaList = 0;
  int numberOfMoves = shopList.length;
  for (int i = 0; i < numberOfMoves; i++) {
    summaList += catalog_cars[shopList[i]].price;
  }
  return summaList;
}

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Shop"),
            Text("Итог: ${sumPriceCar().toString()}"),
          ],
        ),
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
                  style: const TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        shopList.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete_forever)),
                leading:
                    Image.asset(catalog_cars[shopList[index]].carsPhoto[0]),
                subtitle: Text(
                    style: const TextStyle(fontSize: 16),
                    catalog_cars[shopList[index]].price.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
