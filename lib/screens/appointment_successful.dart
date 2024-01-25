import 'package:flutter/material.dart';
import 'package:medical_adviser/screens/Home_Screen.dart';
import 'package:medical_adviser/screens/custom_buttons.dart';
import 'package:medical_adviser/screens/schedule_screen.dart';
import 'package:medical_adviser/widgets/navbar_roots.dart';

class AppointmentSuccessful extends StatelessWidget {
  const AppointmentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SUCCESS IMAGE
          Image.asset(
            "assets/success.png",
            height: 200,
          ),

          const SizedBox(height: 50),

          // SUCCESS TEXT
          const Text(
            "Appointment Booked Successfully!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 27),
          ),
          const SizedBox(height: 70),

          // CONTINUE BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: PrimaryButton(
                text: "Continue",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavBarRoots(
                          selectedIndex: 2,
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
