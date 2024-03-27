import 'package:flutter/material.dart';
import 'package:flutter_application_1/favotite_page.dart';
import 'package:flutter_application_1/module/date_base.dart';
import 'package:flutter_application_1/shopping_cart_page.dart';
import 'page_user.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainPageStore(),
    ),
  );
}

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
        itemCount: catalog_cars.length,
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
              builder: (context) => MyWidget(id: selectIndex),
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
          title: Image.asset(catalog_cars[index].carsPhoto[0]),

          //
          subtitle: Column(
            children: [
              Text(
                catalog_cars[index].name,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                catalog_cars[index].discription,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "${catalog_cars[index].price.toString()} Рублей",
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
