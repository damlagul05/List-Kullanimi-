// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Person personFromJson(String str) => Person.fromJson(json.decode(str));

String personToJson(Person data) => json.encode(data.toJson());

class Person {
  int id;
  String isim;
  bool ogrencimi;
  List<String> sevdiirenkler;
  List<Adres> adres;

  Person({
    required this.id,
    required this.isim,
    required this.ogrencimi,
    required this.sevdiirenkler,
    required this.adres,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    id: json["id"],
    isim: json["isim"],
    ogrencimi: json["ogrencimi"],
    sevdiirenkler: List<String>.from(json["sevdiğirenkler"].map((x) => x)),
    adres: List<Adres>.from(json["adres"].map((x) => Adres.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "isim": isim,
    "ogrencimi": ogrencimi,
    "sevdiğirenkler": List<dynamic>.from(sevdiirenkler.map((x) => x)),
    "adres": List<dynamic>.from(adres.map((x) => x.toJson())),
  };
}

class Adres {
  String il;
  String ilce;
  String tur;
  @override
  String toString() {
    // TODO: implement toString
    return "il:$il , ilçe:$ilce";
  }

  Adres({required this.il, required this.ilce, required this.tur});

  factory Adres.fromJson(Map<String, dynamic> json) =>
      Adres(il: json["il"], ilce: json["ilce"], tur: json["tur"]);

  Map<String, dynamic> toJson() => {"il": il, "ilce": ilce, "tur": tur};
}
