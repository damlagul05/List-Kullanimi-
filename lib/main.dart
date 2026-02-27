import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:listler_app_flutter/card_listtile.dart';
import 'package:listler_app_flutter/dio_kullanimi.dart';
import 'package:listler_app_flutter/gridviewcesitleri.dart';
import 'package:listler_app_flutter/jsonapikullanimi.dart';
import 'package:listler_app_flutter/listviewkullanimi.dart';

void main() => runApp(const myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [FlutterSmartDialog.observer],
      // here
      builder: FlutterSmartDialog.init(),
      home: Scaffold(
        appBar: AppBar(title: Text("liste ve veri işlemleri")),
        body: diokullanimi(),
      ),
    );
  }
}
