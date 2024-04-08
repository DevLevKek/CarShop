import 'package:flutter/material.dart';
import 'favorite_product.dart';
import 'shop_list.dart';
import 'product_card.dart';
import 'module/date_base.dart';

class MainPageStore extends StatefulWidget {
  const MainPageStore({super.key});
  @override
  State<MainPageStore> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPageStore> {
  //Переменные

  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Car Shop"),
              Row(
                children: [
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
                      size: 32,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_basket,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShopCar(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          )),

      //LISTVIEW
      body: ListView.builder(
        itemCount: catalogCars.length,
        itemBuilder: _createListView,
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
      child: Card(
        color: index == selectIndex
            ? const Color.fromARGB(255, 252, 254, 255)
            : const Color.fromARGB(255, 255, 255, 255),
        child: ListTile(
          title: Image.asset(catalogCars[index].carsPhoto[0]),

          //
          subtitle: Column(
            children: [
              Text(
                catalogCars[index].name,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                catalogCars[index].discription,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "${catalogCars[index].price.toString()} Рублей",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),

              // add to basket
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // if (false == shopList.contains(index)) {
                      shopList.add(index);
                      // }
                    },
                    label: const Text(
                      "Add to bascet",
                      style: TextStyle(fontSize: 24),
                    ),
                    icon: const Icon(
                      Icons.shopping_basket,
                      size: 32,
                    ),
                  ),

                  const SizedBox(
                    width: 16,
                  ),

                  //add to favorite
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 32,
                      color: true == favoriteList.contains(index)
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : const Color.fromARGB(255, 0, 0, 0),
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
