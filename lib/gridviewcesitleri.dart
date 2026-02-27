import 'package:flutter/material.dart';
import 'package:listler_app_flutter/listviewkullanimi.dart';

class Gridviewcesitleri extends StatelessWidget {
  Gridviewcesitleri({super.key});

  List<ogrenci> ogrenciler = List.generate(500, (index) {
    return ogrenci(
      id: (index + 1),
      ad: "öğrenci:${index + 1}",
      erkekmi: index % 2 == 0,
    );
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //bir satıra yan yana kaç adet sığmasını istersek kullanırız sayı veririz.
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        childAspectRatio:
            MediaQuery.of(context).size.width > 600
                ? 3
                : 1, //bu oran belirtir 1e 3 gibi.
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.orange[100 * (index % 9)],
          child: Text(ogrenciler[index].toString()),
        );
      },
    );
  }

  GridView gridviewextendkullanimi() {
    return GridView.extent(
      //maximum boyuta göre eleman koymak istersek kullanıyoruz.
      maxCrossAxisExtent: 100,
      children: createcontainers(20),
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      scrollDirection:
          Axis.vertical, //scroll yukarıdan aşağıya olur horizontal olursa da soldan sağa olur.reverse dersek elemanlar tersten başlar .
    );
  }

  GridView gridviewcountkullanimi() {
    //satıra kaç tane eleman koymak istersek kullanıyoruz.
    return GridView.count(
      crossAxisCount: 2,
      children: createcontainers(20),
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      scrollDirection:
          Axis.vertical, //scroll yukarıdan aşağıya olur horizontal olursa da soldan sağa olur.reverse dersek elemanlar tersten başlar .
    );
  }
}

List<Widget> createcontainers(int length) {
  return List.generate(length, (index) {
    var renkshade = 100 * ((index + 1) % 10);
    var sonshade = renkshade == 0 ? 100 : renkshade;
    return Container(
      alignment: Alignment.center,
      color: Colors.purple[sonshade],
      child: Text(
        "container:$sonshade",
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  });
}
