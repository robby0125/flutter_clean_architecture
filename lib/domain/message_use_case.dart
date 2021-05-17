import 'package:flutter_clean_architecture/domain/message_entity.dart';

abstract class MessageUseCase {
  MessageEntity getMessage(String name);
}