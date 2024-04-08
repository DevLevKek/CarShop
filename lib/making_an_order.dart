import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MakingAnOrder extends StatefulWidget {
  final double sum;
  const MakingAnOrder({Key? key, required this.sum}) : super(key: key);

  @override
  State<MakingAnOrder> createState() => _MakingAnOrderState();
}

class _MakingAnOrderState extends State<MakingAnOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Text(
          "Оформление заказа",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Actay',
              fontWeight: FontWeight.w700,
              height: 0,
              decoration: TextDecoration.none),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //ПОЧТА
              const TextField(
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Actay',
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'Actay',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  hintText: "Логин",
                  hintFadeDuration: Durations.extralong1,
                ),
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //ПАРОЛЬ
              const TextField(
                obscureText: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Actay',
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'Actay',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  hintText: "Пароль",
                  hintFadeDuration: Durations.extralong1,
                ),
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //ТЕЛЕФОН
              const TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [],
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Actay',
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'Actay',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  hintText: "Телефон",
                  hintFadeDuration: Durations.extralong1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              //ИТОГ
              Text(
                "Итог: ${widget.sum.toString()}",
                style: const TextStyle(
                  fontFamily: 'ActayWide',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

              //ОТСТУП
              const SizedBox(
                height: 16,
              ),

              //BUTTON
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MakingAnOrder(
                        sum: widget.sum,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Text( widget.sum.toString(),),
