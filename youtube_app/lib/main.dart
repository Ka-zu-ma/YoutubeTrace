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
            leading: Icon(Icons.videocam, color: Colors.black,),
            title: const Text('Youtubeアプリ',style: TextStyle(color: Colors.black),),
            actions: [
              SizedBox(
                width: 44,
                child: TextButton(
                  onPressed: (){},
                  child: Icon(Icons.search),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
                ),
              ),
              SizedBox(
                width: 44,
                child: TextButton(
                    onPressed: (){},
                    child: Icon(Icons.more_vert),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
                ),
              )
            ],
          ),
          body: Container(),
        ),
    );
  }
}