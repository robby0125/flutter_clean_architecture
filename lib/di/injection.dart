import 'package:flutter_clean_architecture/data/imessage_data_source.dart';
import 'package:flutter_clean_architecture/data/message_data_source.dart';
import 'package:flutter_clean_architecture/data/message_repository.dart';
import 'package:flutter_clean_architecture/domain/imessage_repository.dart';
import 'package:flutter_clean_architecture/domain/message_interactor.dart';
import 'package:flutter_clean_architecture/domain/message_use_case.dart';

class Injection {
  static final Injection _instance = Injection._internal();

  factory Injection() => _instance;

  Injection._internal();

  MessageUseCase provideUseCase() => MessageInteractor(_provideRepository());

  IMessageRepository _provideRepository() =>
      MessageRepository(_provideDataSource());

  IMessageDataSource _provideDataSource() => MessageDataSource();
}
