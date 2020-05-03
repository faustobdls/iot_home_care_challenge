import 'package:home_care/app/modules/home/widgets/custom_card_item_controller.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<CustomCardItemController> cards = [
    CustomCardItemController(0, false),
    CustomCardItemController(1, false),
    CustomCardItemController(2, false),
  ];

  @action
  void addCardItem(CustomCardItemController cardItemController) {
    if (cards == null) cards = [];
    List<CustomCardItemController> newCards = cards;
    cards = null;
    newCards.add(cardItemController);
    cards = newCards;
  }

  @observable
  List<CustomCardItemController> items = [
    CustomCardItemController(0, false),
    CustomCardItemController(1, false),
    CustomCardItemController(2, false),
  ];

  @action
  void addItems(CustomCardItemController cardItemController) {
    if (cards == null) cards = [];
    List<CustomCardItemController> newCards = cards;
    cards = null;
    newCards.add(cardItemController);
    cards = newCards;
  }

  @observable
  bool animation = false;

  @action
  void setAnimation() {
    try {
      animation =
          cards.map((c) => c.state).firstWhere((s) => s, orElse: () => false) ??
              false;
    } catch (e) {
      animation = false;
    }
  }
}
