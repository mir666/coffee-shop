import 'package:coffeeshop/Screen/home.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // Onboarding Image
          const SizedBox(
            child: Image(
              width: double.infinity,
              image: AssetImage('assets/images/Image_Onboarding.png'),
              fit: BoxFit.cover,
            ),
          ),

          //Onboarding Text
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: ColoredBox(
                color: Colors.black,
                child: Column(
                  children: [

                    // Heading section
                    const Padding(
                      padding: EdgeInsets.only(left: 38, top: 0, right: 38, bottom: 10),
                      child: Text(
                        'Fall in Love with Coffee in Blissful Delight!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    // Paragraph section
                    const Padding(
                      padding: EdgeInsets.only(left: 42, top: 0, right: 42, bottom: 15),
                      child: Text(
                        'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    // Button section
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home(),),);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffC67C4E),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
