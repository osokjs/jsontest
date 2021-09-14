import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsontest/config/config_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyConfig extends StatefulWidget {

  const MyConfig({Key? key}) : super(key: key);

  @override
  _MyConfigState createState() => _MyConfigState();
}

class _MyConfigState extends State<MyConfig> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () => readConfig());
  }

  @override
void dispose() {
    super.dispose();
  }

  void readConfig() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    setState(() {
    ConfigData.frequency = (_prefs.getInt('frequency') ?? ConfigData.frequency);
    ConfigData.detailDistance = (_prefs.getInt('detailDistance') ?? ConfigData.detailDistance);
  });
}

  void saveConfig() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
      _prefs.setInt('frequency', ConfigData.frequency);
      _prefs.setInt('detailDistance', ConfigData.detailDistance);
    Get.toNamed('/');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환경 설정'),
      ),
      body: SafeArea(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            // fontFamily: 'font name',
            color: Colors.red,
            backgroundColor:Colors.cyan,
          ),
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
          Text('화면 갱신 주기',
            style: Theme.of(context).textTheme.headline3,),
      RadioListTile<int>(
        title: const Text('5 초'),
        value: 5,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
      RadioListTile<int>(
        title: const Text('7 초'),
        value: 7,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
      RadioListTile<int>(
        title: const Text('10 초'),
        value: 10,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
      RadioListTile<int>(
        title: const Text('15 초'),
        value: 15,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
      RadioListTile<int>(
        title: const Text('30 초'),
        value: 30,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
      RadioListTile<int>(
        title: const Text('60 초'),
        value: 60,
        groupValue: ConfigData.frequency,
        onChanged: (value) {
          setState(() {
            if(value == null) return;
            ConfigData.frequency = value;
          });
        },
      ), // RadioListTile
    Text('나머지 설정',
      style: Theme.of(context).textTheme.headline4,),
    Text(
      '상세 거리 표시 범위: ${ConfigData.detailDistance} km'
    ),
    // CheckboxListTile(
    // title: const Text('체크박스 리스트 타일'),
    //   isThreeLine: false,
    //   activeColor: Colors.deepOrangeAccent,
    //   checkColor: Colors.black,
    //   controlAffinity: ListTileControlAffinity.leading,
    // value: ConfigData.autoChangingPoint,
    // onChanged: (bool? value) {
    // setState(() {
    //   ConfigData.autoChangingPoint = !ConfigData.autoChangingPoint;
    // });
    // },
    // secondary: const Icon(Icons.hourglass_empty),
    // ), // CheckBoxListTile
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () => saveConfig(),
            child: Text('저장',),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed('/'),
            child: Text('취소',),
          ),
        ],
      ), // ElevatedButton
            ],
          ), // Column
          ), // Container
      ), // DefaultTextStyle
      ), // SafeArea
    );// Scaffold
  } // build

} // class MyConfig
