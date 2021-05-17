import 'package:flutter_clean_architecture/data/imessage_data_source.dart';
import 'package:flutter_clean_architecture/domain/message_entity.dart';

class MessageDataSource implements IMessageDataSource {
  @override
  MessageEntity getMessageFromSource(String name) => MessageEntity('Hello $name! Welcome to Flutter Clean Architecture');
}