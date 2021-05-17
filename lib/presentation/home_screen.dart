import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Clean Architecture'),
      ),
      body: Center(
        child: Consumer<HomeProvider>(
          builder: (context, value, _) => Text(value.message.welcomeMessage),
        ),
      ),
    );
  }
}
