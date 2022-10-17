import 'package:flutter/material.dart';
import 'package:canteen_app/asset-data.dart';
import 'package:canteen_app/custom-widgets/background.dart';
import 'package:canteen_app/theme-data.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ShowReceipt extends StatefulWidget {
  const ShowReceipt({super.key});

  @override
  State<ShowReceipt> createState() => _ShowReceiptState();
}

class _ShowReceiptState extends State<ShowReceipt> {
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    GlobalKey previewContainer = GlobalKey();
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
                        width: SCREENHEIGHT / 4,
                        padding: EdgeInsets.all(TEN * 2),
                        child: Text(
                          "RECEIPT",
                          style: TextStyle(
                              fontSize: TEN * 4, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Image.asset(receipt_image),
                    ],
                  ),
                  Screenshot(
                    controller: _screenshotController,
                    child: Padding(
                      padding: EdgeInsets.only(top: TEN * 4),
                      child: Center(
                        child: BlurryContainer(
                          width: SCREENWIDTH / 1.2,
                          child: Column(
                            children: [
                              Container(
                                width: SCREENHEIGHT * 0.5,
                                child: Text(
                                  "Congrats! your slot has been booked",
                                  style: TextStyle(
                                      fontSize: TEN * 2.4,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: TEN * 2, bottom: TEN * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Card number',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '050709410005',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: TEN * 2, bottom: TEN * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Date and Time',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      width: (SCREENHEIGHT * 0.14),
                                      child: Text(
                                        '23/10/2022 12:00 12:30',
                                        style: TextStyle(
                                            fontSize: TEN * 2,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: TEN * 2, bottom: TEN * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rank',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Officer',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: TEN * 2, bottom: TEN * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Receipt No.',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '39',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: TEN * 2, bottom: TEN * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Mobile No.',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '1234567890',
                                      style: TextStyle(
                                          fontSize: TEN * 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          color: CIRCLES_NT,
                          blur: 5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: TEN * 2),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: _takeScreenshot,
                        child: Text(
                          "Share receipt",
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

  void _takeScreenshot() async {
    final imageFile = await _screenshotController
        .capture(delay: const Duration(milliseconds: 10))
        .then(
      (image) async {
        if (image != null) {
          final directory = await getApplicationDocumentsDirectory();
          final imagePath = await File('${directory.path}/image.png').create();
          await imagePath.writeAsBytes(image);

          /// Share Plugin
          await Share.shareFiles([imagePath.path]);
        }
      },
    );
  }
}
