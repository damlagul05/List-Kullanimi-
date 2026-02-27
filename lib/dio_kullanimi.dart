import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class diokullanimi extends StatelessWidget {
  diokullanimi({super.key});
  final dio = Dio();
  Future<void> getphotos() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var response = await dio.get(url);
    debugPrint(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    getphotos();
    return Container();
  }
}
