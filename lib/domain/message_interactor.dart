import 'package:flutter_clean_architecture/domain/imessage_repository.dart';
import 'package:flutter_clean_architecture/domain/message_entity.dart';
import 'package:flutter_clean_architecture/domain/message_use_case.dart';

class MessageInteractor implements MessageUseCase {
  MessageInteractor(this._messageRepository);

  final IMessageRepository _messageRepository;

  @override
  MessageEntity getMessage(String name) =>
      _messageRepository.getWelcomeMessage(name);
}
