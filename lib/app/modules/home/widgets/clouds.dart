import 'package:flutter/material.dart';
import 'package:home_care/app/shared/constants.dart';

class CloudsWidget extends StatefulWidget {
  @override
  _CloudsWidgetState createState() => _CloudsWidgetState();
}

class _CloudsWidgetState extends State<CloudsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(),
            child: Image.network(
              Constants.nuvem,
              height: 15,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image.network(
              Constants.nuvem,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
