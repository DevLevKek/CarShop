import 'package:flutter/material.dart';

// class favorite_active {
//   int id;
//   bool isActive;
//   favorite_active(this.id, this.isActive);
// }

List<int> favoriteList = [];

class favoriteUser extends StatelessWidget {
  const favoriteUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            child: Text(
              favoriteList[index].toString(),
              style: TextStyle(fontSize: 26),
            ),
          );
        },
      ),
    );
  }
}
