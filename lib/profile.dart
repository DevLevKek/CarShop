import 'package:flutter/material.dart';
import 'purchase_history.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 25, 26),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        title: const Row(
          children: [
            Icon(
              Icons.person_outline,
              size: 32,
              color: Colors.white,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              "Райан Гослинг",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Actay',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            backgroundColor: const Color.fromARGB(255, 48, 48, 48),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "История покупок",
                style: TextStyle(
                  fontFamily: 'Actay',
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PurchaseHistory(),
              ),
            );
          },
        ),
      ),
    );
  }
}
