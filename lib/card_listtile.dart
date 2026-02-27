import 'package:flutter/material.dart';

class cardlistetilekullanimi extends StatefulWidget {
  const cardlistetilekullanimi({super.key});

  @override
  State<cardlistetilekullanimi> createState() => _cardlistetilekullanimiState();
}

class _cardlistetilekullanimiState extends State<cardlistetilekullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.green.shade100,
          shadowColor: Colors.deepOrange,
          elevation: 17,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Expanded(child: teksatir())]),
          ),
        ),
      ),
    );
  }

  Column teksatir() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          //COLUMN ROW GİBİ ŞEYLERİ İÇİNDE BARINDIRIR.
          leading: CircleAvatar(
            child: Icon(Icons.add),
          ), //SOL KISIMA WİDGETLAR EKLER.
          title: Text("Damla GÜL", style: TextStyle(fontSize: 18)),
          subtitle: Text("Bilgisayar Mühendisliği Öğrencisi"),
          trailing: CircleAvatar(
            child: Icon(Icons.arrow_back),
          ), //SAĞ KISIMA WİDGETLAR EKLER.
        ),
        Divider(
          //BÖLMEYE YARIYOR.
          thickness: 2, //cardlar arasında renkli çizgi
          indent:
              12, //çizgilerin soldan oluşacak olan çıkıntılarını oluşturmaya yarıyor
          endIndent:
              12, //çizgilerin sağdan oluşacak olan çıkıntılarını oluşturmaya yarıyor.
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}


