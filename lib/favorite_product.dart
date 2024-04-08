import 'package:flutter/material.dart';
import 'module/date_base.dart';
import 'product_card.dart';

List<int> favoriteList = [];

class FavoriteUser extends StatefulWidget {
  const FavoriteUser({super.key});

  @override
  State<FavoriteUser> createState() => _FavoriteUserState();
}

class _FavoriteUserState extends State<FavoriteUser> {
  int id = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Text(
          "Избранное",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Actay',
              fontWeight: FontWeight.w700,
              height: 0,
              decoration: TextDecoration.none),
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (_) {
              setState(() {
                favoriteList.removeAt(index);
              });
            },
            child: GestureDetector(
              onTap: () {
                setState(
                  () {
                    id = favoriteList[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductCard(id: id),
                      ),
                    );
                  },
                );
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/image/BACKGROUND/Favorite.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                        fit: BoxFit.cover,
                        catalogCars[favoriteList[index]].carsPhoto[0]),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(catalogCars[favoriteList[index]].name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Actay',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              decoration: TextDecoration.none,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
