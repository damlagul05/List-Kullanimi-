import 'package:flutter/material.dart';

class teksatirliklisttile extends StatelessWidget {
  const teksatirliklisttile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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