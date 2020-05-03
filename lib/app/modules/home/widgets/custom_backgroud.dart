import 'package:flutter/material.dart';
import 'package:home_care/app/modules/home/widgets/clouds.dart';

class CustomBackground extends StatefulWidget {
  @override
  _CustomBackgroundState createState() => _CustomBackgroundState();
}

class _CustomBackgroundState extends State<CustomBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9, // 0.9 / 1.2
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -(MediaQuery.of(context).size.width / 3) + 25,
                    left: MediaQuery.of(context).size.width / 6,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 3,
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 60,
                    child: CloudsWidget(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Color(0xFFEDEDFF), Colors.white],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
