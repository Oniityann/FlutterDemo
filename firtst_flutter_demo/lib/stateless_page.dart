import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

void main() => runApp(StatelessPage());

/// 不依赖自身状态来重新渲染自己
class StatelessPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle ts = TextStyle(fontSize: 20);

    return MaterialApp(
      title: 'StatelessWidget&BasicModules',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget&BasicModules'),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Test text',
                style: ts,
              ),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              CloseButton(),
              BackButton(),
              Chip(
                  avatar: Icon(Icons.people),
                  label: Text('This is a chip.')
              ),
              Divider(
                height: 10, // 容器高度，不是线的高度，无法设置线的高度
                indent: 20, // 左侧间距
                color: Colors.orange,
              ),
              Card( // 带有圆角，阴影，边框等效果的卡片
                color: Colors.amberAccent,
                elevation: 20,
                margin: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'I am a card',
                    style: TextStyle(fontSize: 16, color: ColorUtil.color('ffffff')),
                  ),
                ),

              ),
              AlertDialog(
                title: Text('Alert'),
                content: Text('This is a alert.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
