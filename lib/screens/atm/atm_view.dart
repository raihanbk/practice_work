import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtmScreen extends StatelessWidget {
  const AtmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      height: 230,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red.withOpacity(0.9)),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 280,
                    child: Image.network(
                      "https://pnghq.com/wp-content/uploads/atm-chip-png-transparent-images-free-download-transparent.png",
                      height: 40,
                    ),
                  ),
                  Positioned(
                    top: 160,
                    left: 280,
                    child: Image.network(
                      "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png",
                      height: 50,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 120,
                    child: Text(
                      "JUPITER",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: GoogleFonts.caladea().fontFamily,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    left: 20,
                    child: Text(
                      "6852 5485 9012 7856",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: GoogleFonts.caladea().fontFamily,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                      top: 95,
                      left: 40,
                      child:  Text("RAIHAN B K",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.cambo().fontFamily
                        ),)
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
