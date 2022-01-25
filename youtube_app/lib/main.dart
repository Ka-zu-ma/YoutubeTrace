import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(primary:  Colors.white,),
      ),
        home:Scaffold(
          appBar: AppBar(
            title: const Text('Youtubeアプリ'),
          ),
          body: Container(),
        ),
    );
  }
}