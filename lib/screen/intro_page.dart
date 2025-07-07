import 'package:animate_do/animate_do.dart';
import 'package:crypto_wallet_app/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:slide_to_act/slide_to_act.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Wrap the entire Padding containing the Column with SingleChildScrollView
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 64, right: 16),
              child: Column(
                // Ensure the Column takes up minimum space vertically if its children are smaller than the screen
                mainAxisSize: MainAxisSize.min,
                children: [
                  FadeInDown(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/NFT_4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  FadeInLeft(
                      child: Text(
                    'Create Your Cryptocurrency Wallet App',
                    style: TextStyle(
                        color: Colors.yellowAccent[700],
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        fontFamily: ''),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInLeft(
                      child: const Text(
                    'Grow your portfolio by receiving rewards up to 15.5% on your crypto assets',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )),
                  const SizedBox(
                    height: 100,
                  ),
                  // Add some extra padding at the bottom to ensure the content doesn't get cut off by the positioned widget
                  const SizedBox(
                    height: 100, // Adjust this value as needed
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    sliderRotate: false,
                    outerColor: Colors.grey[900],
                    innerColor: Colors.yellowAccent[700],
                    key: key,
                    sliderButtonIcon: const Icon(IconlyBroken.arrow_right),
                    onSubmit: () {
                      Future.delayed(
                        const Duration(seconds: 1),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                      );
                      return null;
                    },
                    child: FadeInRight(
                        child: const Text(
                      'Swipe to get started',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
