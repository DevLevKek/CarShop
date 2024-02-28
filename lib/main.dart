import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/module/date_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8, crossAxisSpacing: 1, crossAxisCount: 1),
          itemBuilder: (context, index) => Card(
                  child: Column(
                children: [
                  Container(
                    child: Image.asset(catalog_cars[index].pathPhoto),
                  ),
                  Text(
                    catalog_cars[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    catalog_cars[index].complect,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      catalog_cars[index].discription,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    catalog_cars[index].price.toString() + " Рубль.",
                    style: const TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              )),
          itemCount: catalog_cars.length),
    ));
  }
}
