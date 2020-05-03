import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_care/app/modules/home/widgets/custom_appbar.dart';
import 'package:home_care/app/modules/home/widgets/custom_backgroud.dart';
import 'package:home_care/app/modules/home/widgets/custom_card_item.dart';
import 'package:home_care/app/modules/home/widgets/custom_card_page_view.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            CustomBackground(),
            AnimatedContainer(
              duration: Duration(milliseconds: 600),
              padding: EdgeInsets.only(top: 200),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Observer(builder: (_) {
                        return AnimatedContainer(
                          onEnd: (){},
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.symmetric(horizontal: controller.animation ? 10 : 25),
                          child: DefaultTextStyle(
                            style: Theme.of(context).primaryTextTheme.body1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Stan's"),
                                    Text(
                                      "Office",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("23° indoor"),
                                    Text("Door closed"),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                      Observer(builder: (_) {
                        return CustomCardPageView(
                          cards: <Widget>[
                            if (controller.cards != null) ...{
                              ...controller.cards
                                  .map((c) => CustomCardItem(
                                        initialValue: c.state,
                                        title: "Gateway",
                                        controller: c,
                                      ))
                                  .toList()
                            }
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: CustomAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
