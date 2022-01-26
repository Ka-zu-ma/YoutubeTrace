import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

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
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network(
                            'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202201251659',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          const Text('とあるYoutubeチャンネル'),
                          TextButton(
                              onPressed: (){},
                              child: Row(
                                children: [
                                  Icon(
                                      Icons.video_call,
                                      color: Colors.red,),
                                  Text('登録する')
                                ],
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black))
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          'https://cdn-images-1.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                        ),
                        title: Column(
                          children: [
                            Text(
                              '[FLutter超入門]リスト作成',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            Row(
                              children: [
                                Text(
                                  '200回再生',
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                    '5日前',
                                    style: TextStyle(fontSize: 13)),
                              ],

                            )
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}