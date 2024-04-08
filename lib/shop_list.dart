import 'package:flutter/material.dart';
import 'module/date_base.dart';
import 'making_an_order.dart';

List<int> shopList = [];
List<List<int>> test = [];

testOne() {
  test[0][1] = 0;
  print(test[0][1]);
}

sumPriceCar() {
  double summaList = 0;
  int numberOfMoves = shopList.length;
  for (int i = 0; i < numberOfMoves; i++) {
    summaList += catalogCars[shopList[i]].price;
  }
  return summaList;
}

class ShopCar extends StatefulWidget {
  const ShopCar({super.key});
  @override
  State<ShopCar> createState() => _ShopCarState();
}

class _ShopCarState extends State<ShopCar> {
  double summaTest = sumPriceCar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Корзина",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Actay',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 82, 82, 82),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 550,
            child: ListView.builder(
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(
                              "lib/assets/image/BACKGROUND/Favorite.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          catalogCars[shopList[index]].name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Actay',
                              height: 0,
                              decoration: TextDecoration.none,
                              color: Colors.white),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                shopList.removeAt(index);
                              });
                            },
                            icon: const Icon(
                              Icons.delete_forever,
                              color: Colors.white,
                            )),
                        leading: Image.asset(
                            catalogCars[shopList[index]].carsPhoto[0]),
                        subtitle: Text(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Actay',
                                height: 0,
                                decoration: TextDecoration.none,
                                color: Colors.white),
                            catalogCars[shopList[index]].price.toString()),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/image/BACKGROUND/shop_sum.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Итог: ${sumPriceCar().toString()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Actay',
                      height: 0,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: 210,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      // maximumSize: Size(215, 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Color.fromARGB(255, 25, 25, 25),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Оформить заказ",
                          style: TextStyle(
                            fontFamily: 'Actay',
                            fontSize: 16,
                            color: Color.fromARGB(255, 25, 25, 25),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      summaTest = sumPriceCar();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakingAnOrder(
                            sum: summaTest,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
