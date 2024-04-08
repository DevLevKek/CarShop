import 'package:flutter/material.dart';

//пока заглушка 

class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Text(
          "История покупок",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Actay',
              fontWeight: FontWeight.w700,
              height: 0,
              decoration: TextDecoration.none),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Сумма: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.000.000 руб",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        "Дата: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.02.2024",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Оформлен",
                        style: TextStyle(
                            color: Color.fromARGB(255, 54, 178, 75),
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Сумма: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.000.000 руб",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        "Дата: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.02.2024",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Отменен",
                        style: TextStyle(
                            color: Color.fromARGB(255, 178, 54, 54),
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Сумма: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.000.000 руб",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        "Дата: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "17.02.2024",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Оформлен",
                        style: TextStyle(
                            color: Color.fromARGB(255, 54, 178, 75),
                            fontSize: 24,
                            fontFamily: 'Actay',
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
