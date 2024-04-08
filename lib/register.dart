import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

class Regist extends StatelessWidget {
  const Regist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/image/BACKGROUND/Вход.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 48, 48, 48),
                ),
                height: 420,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: Column(
                  children: [
                    //ЗАГОЛОВОК
                    const Text(
                      "Регистрация",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: 'ActayWide',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          decoration: TextDecoration.none),
                    ),

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

                    //ЛОГИН
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
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 1),
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
                      ),
                    ),

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

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
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 1),
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
                        hintText: "Почта",
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
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 1),
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
                    TextField(
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ],
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontFamily: 'Actay',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 18),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 1),
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

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

                    //BUTTON ВХОД
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(horizontal: 38),
                        backgroundColor: const Color.fromARGB(255, 255, 79, 25),
                      ),
                      child: const Text(
                        "Зарегистрироваться",
                        style: TextStyle(
                          fontFamily: 'Actay',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
