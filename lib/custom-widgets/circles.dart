import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import '../theme-data.dart';

class circle extends StatelessWidget {
  const circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      child: Container(),
      blur: 5,
      width: 180,
      height: 180,
      elevation: 0,
      color: CIRCLES,
      borderRadius: const BorderRadius.all(Radius.circular(180)),
    );
  }
}
