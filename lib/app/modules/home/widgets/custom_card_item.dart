import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_care/app/modules/home/home_controller.dart';
import 'package:home_care/app/modules/home/widgets/custom_card_item_controller.dart';
import 'package:home_care/app/shared/constants.dart';

class CustomCardItem extends StatefulWidget {
  final bool initialValue;
  final String title;
  final CustomCardItemController controller;

  const CustomCardItem(
      {Key key,
      @required this.initialValue,
      this.controller,
      this.title})
      : super(key: key);

  @override
  _CustomCardItemState createState() => _CustomCardItemState();
}

class _CustomCardItemState extends State<CustomCardItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.white,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(Constants.gatway),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.title ?? "NO TITLE",
                          style: Theme.of(context).primaryTextTheme.display1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Online",
                          style: Theme.of(context).primaryTextTheme.display3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          color: Theme.of(context).dividerColor,
                          height: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Alarming",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .display3
                              .copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Observer(builder: (_) {
                          if (widget.controller.state == null)
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          return CupertinoSwitch(
                            onChanged: widget.controller.setState,
                            value: widget.controller.state,
                            activeColor: Theme.of(context).accentColor,
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
