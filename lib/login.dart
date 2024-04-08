import 'package:flutter/material.dart';
import 'register.dart';
import 'main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                height: 360,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: Column(
                  children: [
                    //ЗАГОЛОВОК
                    const Text(
                      "Вход",
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

                    //BUTTON ВХОД
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(horizontal: 38),
                        backgroundColor: const Color.fromARGB(255, 255, 79, 25),
                      ),
                      child: const Text(
                        "Войти",
                        style: TextStyle(
                          fontFamily: 'Actay',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Mainpage(),
                          ),
                        );
                      },
                    ),

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

                    //BUTTON РЕГИСТРАЦИИ
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(horizontal: 38),
                        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Regist(),
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
