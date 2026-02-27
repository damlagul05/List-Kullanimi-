import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listler_app_flutter/models/person_model.dart';

class jsonapifuturekullanimi extends StatelessWidget {
  const jsonapifuturekullanimi({super.key});
  Future<List<Person>> loadjson() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      var jsonstring = await rootBundle.loadString("assets/data/persons.json");
      debugPrint(jsonstring);
      Map<String, dynamic> jsonmap = json.decode(jsonstring);
      List<dynamic> jsonlist = jsonmap["persons"];
      List<Person> kisiler =
          jsonlist.map((eleman) => Person.fromJson(eleman)).toList();
      for (var kisi in kisiler) {
        debugPrint(kisi.isim);
      }
      return kisiler;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Person>>(
      future: loadjson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var mypersnlist = snapshot.data!;
          return ListView.builder(
            itemBuilder: (context, index) {
              var tekperson = mypersnlist[index];
              return ListTile(
                title: Text(tekperson.isim, style: TextStyle(fontSize: 14)),
                subtitle: Text(
                  tekperson.adres.toString(),
                  style: TextStyle(fontSize: 10),
                ),
                leading: CircleAvatar(child: Text(tekperson.id.toString())),
              );
            },
            itemCount: mypersnlist.length,
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("error çıktı"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
