import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/HeaderWithSearchBox.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            HeaderWithSearchBox(),
          ],
        ),
        appBar: buildAppBar());
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/menu.svg',
      ),
      onPressed: () {},
    ),
  );
}
