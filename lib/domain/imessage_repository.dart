import 'package:flutter_clean_architecture/domain/message_entity.dart';

abstract class IMessageRepository {
  MessageEntity getWelcomeMessage(String name);
}