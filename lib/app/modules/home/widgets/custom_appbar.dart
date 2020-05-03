import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Theme.of(context).primaryIconTheme.color,
              size: 32,
            ),
            Icon(
              Icons.menu,
              color: Theme.of(context).primaryIconTheme.color,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 70);
}
