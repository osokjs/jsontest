import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'group_add.dart';

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
                onPressed: () => Get.toNamed('/config'),
                child: Text(
                  '환경 설정',
                ),
            ), // ElevatedButton
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/group_list'),
              child: Text(
                '엘리베이티드 버튼',
              ),
            ), // TextButton
          ],
        ), // Column
      ),// padding
    );
  }
}
