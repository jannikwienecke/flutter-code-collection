import 'package:flutter/material.dart';
import '../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding,
              ),
              height: size.height * 0.2 - 27,
              width: size.width,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(children: [
                Expanded(
                  child: Text(
                    'Hi UiShopy',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Image.asset("assets/images/logo.png")
              ])),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(.2),
                  ),
                ],
              ),
              child: Container(
                child: TextField(
                    decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: kPrimaryColor),
                  hintText: "Search",
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
