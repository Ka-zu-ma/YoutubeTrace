import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
      ),
      body: Container(
        child: Text('動画'),
      ),
    );
  }

}