import 'package:flutter/material.dart';
import 'package:canteen_app/asset-data.dart';
import 'package:canteen_app/custom-widgets/background.dart';
import 'package:canteen_app/theme-data.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class CaptchaPage extends StatelessWidget {
  const CaptchaPage({super.key});

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
            SingleChildScrollView(
              child: Column(
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
                        width: SCREENHEIGHT / 3.5,
                        padding: EdgeInsets.all(TEN * 2),
                        child: Text(
                          "GENERATE CAPTCHA",
                          style: TextStyle(
                              fontSize: TEN * 4, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Image.asset(captcha_image),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: TEN * 10),
                    child: Center(
                      child: BlurryContainer(
                        width: SCREENWIDTH / 1.2,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter mobile number',
                          ),
                        ),
                        color: CIRCLES,
                        blur: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: TEN * 2),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/add-card-number");
                        },
                        child: Text(
                          "Generate captcha",
                          style: TextStyle(
                            fontSize: (TEN + 4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
