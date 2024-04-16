import 'package:flutter/material.dart';

class ValidationNotifier extends ChangeNotifier {
  bool _isValid = false;
  String _validationMessage = "It is not valid";
  bool get isValid => this._isValid;
  String get ValidationMessage => this._validationMessage;

  void checkForValidation(
    String value,
  ) {
    if (value.contains('@')) {
      _isValidCheck();
    } else {
      _isNotValidCheck();
    }
  }

  _isValidCheck() {
    this._isValid = true;
    this._validationMessage = "valid email address";
    notifyListeners();
  }

  _isNotValidCheck() {
    this._isValid = false;
    this._validationMessage = "invalid email address";
    notifyListeners();
  }
}
