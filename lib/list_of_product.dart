import 'package:flutter/material.dart';
import 'module/date_base.dart';
import 'product_card.dart';
import 'favorite_product.dart';
import 'shop_list.dart';

class ListOfProduct extends StatefulWidget {
  const ListOfProduct({super.key});
  @override
  State<ListOfProduct> createState() => _ListOfProductState();
}

class _ListOfProductState extends State<ListOfProduct> {
  //Переменные

  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Car Shop",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Actay',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoriteUser(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.favorite,
                  size: 40,
                  color: Color.fromARGB(255, 136, 136, 136),
                ))
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: catalogCars.length,
        itemBuilder: _createListView,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            childAspectRatio: 0.5),
      ),
    );
  }

  Widget _createListView(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductCard(id: selectIndex),
            ),
          );
          selectIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage("lib/assets/image/BACKGROUND/Product.png"),
            fit: BoxFit.cover,
          ),
          color: const Color.fromARGB(255, 82, 82, 82),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ИКОНКА
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          shape: BoxShape.circle,
                        )),
                    IconButton(
                      icon: true == favoriteList.contains(index)
                          ? const Icon(
                              Icons.favorite,
                              size: 30,
                            )
                          : const Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                      color: true == favoriteList.contains(index)
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : const Color.fromARGB(255, 48, 48, 48),
                      onPressed: () {
                        setState(
                          () {
                            if (false == favoriteList.contains(index)) {
                              favoriteList.add(index);
                            } else if (true == favoriteList.contains(index)) {
                              favoriteList.remove(index);
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),

            //ФОТО МАШИНЫ
            Image.asset(catalogCars[index].carsPhoto[0]),
            const SizedBox(
              height: 8,
            ),

            //НАЗВАНИЕ МАШИНЫ
            SizedBox(
              height: 60,
              child: Text(
                catalogCars[index].name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'ActayWide',
                    height: 0,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              ),
            ),

            //ОТСТУП
            const SizedBox(
              height: 16,
            ),

            //ЦЕНА

            Text(
              "${catalogCars[index].price.toString()} Руб",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'ActayWide',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),

            //ОТСТУП
            const SizedBox(
              height: 8,
            ),

            //BUTTON ДОБАВИТЬ В КОРЗИНУ
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                backgroundColor: const Color.fromARGB(255, 255, 79, 25),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "В корзину",
                    style: TextStyle(
                      fontFamily: 'Actay',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                shopList.add(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
