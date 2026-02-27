import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:listler_app_flutter/teksatirlikwidget.dart';

class Listviewkullanimi extends StatelessWidget {
  Listviewkullanimi({super.key});
  List<ogrenci> tumogrenciler = List.generate(
    1000,
    (index) => ogrenci(
      id: index + 1,
      ad: "öğrenci adı ${index + 1}",
      erkekmi: index % 2 == 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tumogrenciler.length,
      itemBuilder:
          (context, index) => GestureDetector(
            onLongPress: () {
              debugPrint("card widget tıklanıldı ${tumogrenciler[index].ad}");
            },
            child: Card(
              color:
                  tumogrenciler[index].erkekmi
                      ? Colors.blue.shade300
                      : Colors.pink.shade300,
              child: ListTile(
                onTap: () {
                  SmartDialog.show(
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'listile widget tıklanıldı ${tumogrenciler[index].ad}',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  );
                  debugPrint(
                    "listile widget tıklanıldı ${tumogrenciler[index].ad}",
                  );
                },
                title: Text(tumogrenciler[index].ad),
                leading: CircleAvatar(child: Text(index.toString())),
              ),
            ),
          ),
    );
  }

  ListView listviewkullanimi() {
    return ListView(
      children: [
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
        teksatirliklisttile(),
      ],
    );
  }

  SingleChildScrollView singlescrool() {
    return SingleChildScrollView(
      child: teksatirliklisttile(),
    ); //bu çocuk bekler taşma olmaması için scrool özelliği kullanır.
  }
}

class ogrenci {
  final int id;
  final String ad;
  final bool erkekmi;
  ogrenci({required this.id, required this.ad, required this.erkekmi});
  @override
  String toString() {
    
    return "$ad";
  }
}
