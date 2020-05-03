import 'package:mobx/mobx.dart';

part 'custom_list_view_item_controller.g.dart';

class CustomListViewItemController = _CustomListViewItemControllerBase
    with _$CustomListViewItemController;

abstract class _CustomListViewItemControllerBase with Store {

  _CustomListViewItemControllerBase(this.pos, this.state);

  @observable
  int pos;

  @observable
  bool state;

  @action
  void setState(bool newValue) {
    state = newValue;
    // Modular.get<HomeController>().setAnimation();
  }

  @observable
  bool animation = false;

  @action
  void setPos(int newPos) {
    pos = newPos;
  }
}
