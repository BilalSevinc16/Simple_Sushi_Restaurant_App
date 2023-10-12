import 'package:flutter/material.dart';
import 'package:simple_sushi_restaurant_app/components/button.dart';
import 'package:simple_sushi_restaurant_app/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 20),
                // shop name
                Text(
                  "SUSHI MAN",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // icon
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Image.asset(
                    "images/salmon_eggs.png",
                    height: 230,
                    width: 230,
                  ),
                ),
                const SizedBox(height: 20),
                // title
                Text(
                  "THE TASTE OF JAPANESE FOOD",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // subtitle
                Text(
                  "Feel the taste of the most popular Japanese food from anywhere and anytime",
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    height: 2,
                  ),
                ),
                const SizedBox(height: 30),
                // get started button
                MyButton(
                  text: "Get Started",
                  onTap: () {
                    // go to menu page
                    Navigator.pushNamed(context, "/menupage");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
