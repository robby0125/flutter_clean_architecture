import 'package:flutter_clean_architecture/data/imessage_data_source.dart';
import 'package:flutter_clean_architecture/domain/imessage_repository.dart';
import 'package:flutter_clean_architecture/domain/message_entity.dart';

class MessageRepository implements IMessageRepository {
  MessageRepository(this._messageDataSource);

  final IMessageDataSource _messageDataSource;

  @override
  MessageEntity getWelcomeMessage(String name) =>
      _messageDataSource.getMessageFromSource(name);
}
