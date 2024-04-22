import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome', style: GoogleFonts.cabin(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Image.asset('assets/images/lock.png')
            ],
          ),
        ),
      ),
    );
  }
}
