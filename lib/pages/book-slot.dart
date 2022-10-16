import 'package:canteen_app/asset-data.dart';
import 'package:canteen_app/custom-widgets/background.dart';
import 'package:canteen_app/theme-data.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class BookSlot extends StatelessWidget {
  const BookSlot({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double FIVE = SCREENHEIGHT * 0.005616179;
    double TEN = SCREENHEIGHT * 0.011232358;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BACKGROUND(TEN: TEN),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: (TEN * 2),
                    left: (TEN * 1.5),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                    foregroundColor: Colors.black,
                    backgroundColor: ACCENTCOLOUR,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: SCREENHEIGHT / 4,
                      padding: EdgeInsets.all(TEN * 2),
                      child: Text(
                        "Book a slot",
                        style: TextStyle(
                            fontSize: TEN * 5, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Image.asset(booking),
                  ],
                ),
                Center(
                  child: Container(
                    width: SCREENWIDTH * 0.8,
                    child: Text(
                      "Reserve a slot, so You don’t have to stand in queues when you arrive",
                      style: TextStyle(
                          fontSize: TEN * 1.6, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(TEN * 2),
                    child: BlurryContainer(
                      height: (TEN * 15),
                      width: (TEN * 15),
                      color: CIRCLES,
                      blur: 5,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/captcha-page');
                        },
                        child: Text(
                          "OFFICERS",
                          style: TextStyle(fontSize: TEN * 2.4),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(TEN * 2),
                    child: BlurryContainer(
                      height: (TEN * 15),
                      width: (TEN * 15),
                      color: CIRCLES,
                      blur: 5,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/captcha-page');
                        },
                        child: Text(
                          "AIRMENS",
                          style: TextStyle(fontSize: TEN * 2.4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
