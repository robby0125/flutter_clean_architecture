import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/domain/message_entity.dart';
import 'package:flutter_clean_architecture/domain/message_use_case.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider(this._messageUseCase) {
    setName('Robby');
  }

  final MessageUseCase _messageUseCase;

  MessageEntity _message;

  MessageEntity get message => _message;

  void setName(String name) {
    _message = _messageUseCase.getMessage(name);
    notifyListeners();
  }
}