import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/date_base.dart';
import 'page_user.dart';

List<int> favoriteList = [];

class favoriteUser extends StatefulWidget {
  const favoriteUser({super.key});

  @override
  State<favoriteUser> createState() => _favoriteUserState();
}

class _favoriteUserState extends State<favoriteUser> {
  int id = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
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
                        builder: (context) => MyWidget(id: id),
                      ),
                    );
                    
                    print(id);
                  },
                );
              },
              child: Card(
                color: Colors.white,
                elevation: 4,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Image.asset(
                          catalog_cars[favoriteList[index]].carsPhoto[0]),
                    ),
                    ListTile(
                      title: Text(catalog_cars[favoriteList[index]].name,
                          style: const TextStyle(fontSize: 24)),
                      subtitle: Text(
                        catalog_cars[favoriteList[index]].price.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
