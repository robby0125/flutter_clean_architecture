import 'package:flutter_clean_architecture/domain/message_entity.dart';

abstract class IMessageDataSource {
  MessageEntity getMessageFromSource(String name);
}