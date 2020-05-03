// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_card_item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomCardItemController on _CustomCardItemControllerBase, Store {
  final _$posAtom = Atom(name: '_CustomCardItemControllerBase.pos');

  @override
  int get pos {
    _$posAtom.context.enforceReadPolicy(_$posAtom);
    _$posAtom.reportObserved();
    return super.pos;
  }

  @override
  set pos(int value) {
    _$posAtom.context.conditionallyRunInAction(() {
      super.pos = value;
      _$posAtom.reportChanged();
    }, _$posAtom, name: '${_$posAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_CustomCardItemControllerBase.state');

  @override
  bool get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(bool value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$animationAtom = Atom(name: '_CustomCardItemControllerBase.animation');

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

  final _$_CustomCardItemControllerBaseActionController =
      ActionController(name: '_CustomCardItemControllerBase');

  @override
  void setState(bool newValue) {
    final _$actionInfo =
        _$_CustomCardItemControllerBaseActionController.startAction();
    try {
      return super.setState(newValue);
    } finally {
      _$_CustomCardItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPos(int newPos) {
    final _$actionInfo =
        _$_CustomCardItemControllerBaseActionController.startAction();
    try {
      return super.setPos(newPos);
    } finally {
      _$_CustomCardItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'pos: ${pos.toString()},state: ${state.toString()},animation: ${animation.toString()}';
    return '{$string}';
  }
}
