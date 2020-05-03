// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$cardsAtom = Atom(name: '_HomeControllerBase.cards');

  @override
  List<CustomCardItemController> get cards {
    _$cardsAtom.context.enforceReadPolicy(_$cardsAtom);
    _$cardsAtom.reportObserved();
    return super.cards;
  }

  @override
  set cards(List<CustomCardItemController> value) {
    _$cardsAtom.context.conditionallyRunInAction(() {
      super.cards = value;
      _$cardsAtom.reportChanged();
    }, _$cardsAtom, name: '${_$cardsAtom.name}_set');
  }

  final _$itemsAtom = Atom(name: '_HomeControllerBase.items');

  @override
  List<CustomCardItemController> get items {
    _$itemsAtom.context.enforceReadPolicy(_$itemsAtom);
    _$itemsAtom.reportObserved();
    return super.items;
  }

  @override
  set items(List<CustomCardItemController> value) {
    _$itemsAtom.context.conditionallyRunInAction(() {
      super.items = value;
      _$itemsAtom.reportChanged();
    }, _$itemsAtom, name: '${_$itemsAtom.name}_set');
  }

  final _$animationAtom = Atom(name: '_HomeControllerBase.animation');

  @override
  bool get animation {
    _$animationAtom.context.enforceReadPolicy(_$animationAtom);
    _$animationAtom.reportObserved();
    return super.animation;
  }

  @override
  set animation(bool value) {
    _$animationAtom.context.conditionallyRunInAction(() {
      super.animation = value;
      _$animationAtom.reportChanged();
    }, _$animationAtom, name: '${_$animationAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addCardItem(CustomCardItemController cardItemController) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.addCardItem(cardItemController);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItems(CustomCardItemController cardItemController) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.addItems(cardItemController);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAnimation() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setAnimation();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'cards: ${cards.toString()},items: ${items.toString()},animation: ${animation.toString()}';
    return '{$string}';
  }
}
