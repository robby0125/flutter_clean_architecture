import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/di/injection.dart';
import 'package:flutter_clean_architecture/presentation/home_provider.dart';
import 'package:flutter_clean_architecture/presentation/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(Injection().provideUseCase()),
      child: MaterialApp(
        title: 'Flutter Simple Clean Architecture',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
