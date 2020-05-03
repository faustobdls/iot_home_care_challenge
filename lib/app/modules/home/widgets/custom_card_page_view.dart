import 'package:flutter/material.dart';

class CustomCardPageView extends StatelessWidget {
  final PageController pageViewController;
  final List<Widget> cards;

  const CustomCardPageView({Key key, this.pageViewController, this.cards})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: Container(
        padding: EdgeInsets.only(top: 30),
        child: PageView(
          controller: pageViewController ?? PageController(),
          children: this.cards
        ),
      ),
    );
  }
}
