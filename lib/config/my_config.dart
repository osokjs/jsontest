import 'package:flutter/material.dart';

class MyConfig extends StatefulWidget {
  const MyConfig({Key? key}) : super(key: key);

  @override
  _MyConfigState createState() => _MyConfigState();
}

class _MyConfigState extends State<MyConfig> {
  @override
  Widget build(BuildContext context) {
    return Container(
      Text(
        '이것은 heading입니다.',
        style: Theme.of(context).textTheme.headline,
      ),
      Text('일반적인 텍스트 내용'),
    );
  }
}
