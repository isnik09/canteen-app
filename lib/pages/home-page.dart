import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:canteen_app/theme-data.dart';
import 'package:flutter/material.dart';
import '../asset-data.dart';
import '../custom-widgets/circles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 75),
                child: Stack(
                  fit: StackFit.loose,
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: <Widget>[
                    const Positioned(
                      bottom: 100,
                      left: -20,
                      child: circle(),
                    ),
                    const Positioned(
                      right: 15,
                      bottom: 150,
                      child: circle(),
                    ),
                    const Positioned(
                      right: -100,
                      bottom: 200,
                      child: circle(),
                    ),
                    Positioned(child: Image.asset(cart_image))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/book-a-slot');
                  },
                  child: const Text('Book appointment'),
                ),
              ),
              Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: -100,
                    bottom: -200,
                    child: Image.asset(line_image),
                  ),
                  const Positioned(
                    bottom: -110,
                    left: -100,
                    child: circle(),
                  ),
                  BlurryContainer(
                    blur: 10,
                    color: CIRCLES,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: SizedBox(
                      width: SCREENHEIGHT * 0.4,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        children: [
                          const Text("Recent receipts",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: SCREENWIDTH * 0.45,
                                  child: const Text(
                                      'Your slot has been booked for 23rd Oct 2022 12:00-12:30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/show-receipt');
                                  },
                                  child: const Text('VIEW RECEIPT'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: SCREENWIDTH * 0.45,
                                  child: const Text(
                                      'Your slot has been booked for 16th June 2022 11:00-11:30 ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                                const Text(
                                  'EXPIRED',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: SCREENWIDTH * 0.45,
                                  child: const Text(
                                    'Your slot has been booked for 20th Oct 2022, 16:15-16:45',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Text(
                                  'EXPIRED',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/show-receipt');
                                  },
                                  child: const Text('VIEW ALL'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
