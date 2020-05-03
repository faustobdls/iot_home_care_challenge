import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_care/app/modules/home/home_controller.dart';
import 'package:mobx/mobx.dart';

part 'custom_card_item_controller.g.dart';

class CustomCardItemController = _CustomCardItemControllerBase
    with _$CustomCardItemController;

abstract class _CustomCardItemControllerBase with Store {

  _CustomCardItemControllerBase(this.pos, this.state);

  @observable
  int pos;

  @observable
  bool state;

  @action
  void setState(bool newValue) {
    state = newValue;
    Modular.get<HomeController>().setAnimation();
  }

  @observable
  bool animation = false;

  @action
  void setPos(int newPos) {
    pos = newPos;
  }
}
