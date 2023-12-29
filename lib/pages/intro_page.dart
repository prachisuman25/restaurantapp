import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 108, 71),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),

            // Shop name
            Text(
              "COZY CULINARY",
              style: GoogleFonts.abrilFatface(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 25,
            ),

            // Icon
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/fast-food.png'),
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            // Title
            Text(
              "BEST in TASTE!",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 24,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Subtitle
            Text(
              "We are good at what we do, serving you delightful food",
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // Get started button
            MyButton(
              text: "Get Started!",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menu_page');
              },
            )
          ],
        ),
      ),
    );
  }
}
