import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

class StatefulPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  TextStyle ts = TextStyle(fontSize: 20);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget&BasicModules',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatefulWidget&BasicModules'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            // 设置 tabBar 当前选择页面
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.list,
                    color: Colors.red,
                  ),
                  title: Text('列表')),
            ]),
        body: _currentIndex == 0 ? Container(
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
              Chip(avatar: Icon(Icons.people), label: Text('This is a chip.')),
              Divider(
                height: 10, // 容器高度，不是线的高度，无法设置线的高度
                indent: 20, // 左侧间距
                color: Colors.orange,
              ),
              Card(
                // 带有圆角，阴影，边框等效果的卡片
                color: Colors.amberAccent,
                elevation: 20,
                margin: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'I am a card',
                    style: TextStyle(
                        fontSize: 16, color: ColorUtil.color('ffffff')),
                  ),
                ),
              ),
              AlertDialog(
                title: Text('Alert'),
                content: Text('This is a alert.'),
              ),
            ],
          ),
        ) : Text('Second Page', style: ts,),
      ),
    );
  }
}
