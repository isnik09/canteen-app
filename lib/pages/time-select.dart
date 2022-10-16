import 'package:flutter/material.dart';
import 'package:canteen_app/asset-data.dart';
import 'package:canteen_app/custom-widgets/background.dart';
import 'package:canteen_app/theme-data.dart';
import 'package:flutter/cupertino.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:group_button/group_button.dart';

class TimeSelect extends StatefulWidget {
  const TimeSelect({super.key});

  @override
  State<TimeSelect> createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  DateTime dateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  final controller = GroupButtonController(
    selectedIndex: 0,
    onDisablePressed: (i) => print('Button #$i is disabled'),
  );

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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: SCREENHEIGHT / 4,
                        padding: EdgeInsets.all(TEN * 2),
                        child: Text(
                          "DATE & TIME",
                          style: TextStyle(
                              fontSize: TEN * 4, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Image.asset(date_image),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: TEN * 2),
                    child: Center(
                      child: BlurryContainer(
                        color: CIRCLES,
                        width: SCREENWIDTH / 1.5,
                        child: Column(
                          children: [
                            Text(
                              "Select Date",
                              style: TextStyle(fontSize: TEN * 1.4),
                            ),
                            TextButton(
                              child: Text(
                                '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                                style: TextStyle(fontSize: (TEN * 2)),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      BlurryContainer(
                                    color: BG_TRANSP,
                                    blur: 15,
                                    borderRadius: BorderRadius.circular(20),
                                    height: (TEN * 45),
                                    child: CupertinoDatePicker(
                                      // backgroundColor: CIRCLES,
                                      initialDateTime: dateTime,
                                      onDateTimeChanged: (DateTime newTime) {
                                        setState(() => dateTime = newTime);
                                      },
                                      mode: CupertinoDatePickerMode.date,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: TEN * 2, bottom: TEN * 2),
                    alignment: Alignment.center,
                    child: GroupButton(
                      options: GroupButtonOptions(
                        selectedTextStyle: TextStyle(
                          fontSize: TEN * 1.4,
                        ),
                        unselectedTextStyle: TextStyle(
                          fontSize: TEN * 1.4,
                        ),
                        selectedColor: ACCENTCOLOUR,
                        unselectedColor: CIRCLES,
                        borderRadius: BorderRadius.circular(100),
                        spacing: 10,
                        runSpacing: 10,
                        groupingType: GroupingType.wrap,
                        direction: Axis.horizontal,
                        mainGroupAlignment: MainGroupAlignment.center,
                        crossGroupAlignment: CrossGroupAlignment.center,
                        groupRunAlignment: GroupRunAlignment.center,
                        textAlign: TextAlign.center,
                        textPadding: EdgeInsets.zero,
                        alignment: Alignment.center,
                      ),
                      controller: controller,
                      isRadio: true,
                      buttons: [
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                        '10:00-10:30',
                      ],
                      maxSelected: 1,
                      onSelected: (val, i, selected) => debugPrint(
                          'Button: $val index: $i selected: $selected'),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/show-receipt");
                      },
                      child: Text(
                        "Book appointment",
                        style: TextStyle(
                          fontSize: (TEN * 1.4),
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
