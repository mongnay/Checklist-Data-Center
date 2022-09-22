import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:checklist/package.flutter/aspek.dart';

class jaringanmenu extends StatefulWidget {
  @override
  jaringanmenustate createState() => jaringanmenustate();
}

class jaringanmenustate extends State<jaringanmenu> {
  String selectedValueNgagel = '';
  String selectedValueGudang = '';
  String selectedValueKarangPilang = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KOMPONEN JARINGAN'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text("Ngagel"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueNgagel,
                    onChanged: (value) =>
                        setState(() => selectedValueNgagel = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueNgagel,
                    onChanged: (value) =>
                        setState(() => selectedValueNgagel = 'Unavailable'),
                  ),
                ]),
              ),
            ]),
          ),
          Divider(
            color: Colors.grey,
            height: 25,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text("Gudang"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueGudang,
                    onChanged: (value) =>
                        setState(() => selectedValueGudang = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueGudang,
                    onChanged: (value) =>
                        setState(() => selectedValueGudang = 'Unavailable'),
                  ),
                ]),
              ),
            ]),
          ),
          Divider(
            color: Colors.grey,
            height: 25,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text("Karang Pilang"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueKarangPilang,
                    onChanged: (value) =>
                        setState(() => selectedValueKarangPilang = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueKarangPilang,
                    onChanged: (value) => setState(
                        () => selectedValueKarangPilang = 'Unavailable'),
                  ),
                ]),
              ),
            ]),
          ),
          MaterialButton(
            onPressed: () {
              final status_ngagel = selectedValueNgagel;
              final status_gudang = selectedValueGudang;
              final status_karang_pilang = selectedValueKarangPilang;

              createJaringan(
                  status_ngagel: status_ngagel,
                  status_gudang: status_gudang,
                  status_karang_pilang: status_karang_pilang);

              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => aspekMenu()));
            },
            color: Color(0xff3531b9),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Save",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xfffbfbfb),
            height: 40,
            minWidth: 220,
          ),
        ]),
      ),
    );
  }

  void createJaringan(
      {required String status_ngagel,
      status_gudang,
      status_karang_pilang}) async {
    final docJaringan = FirebaseFirestore.instance.collection('jaringan').doc();

    final jar = Jar(
      status_ngagel: status_ngagel,
      status_gudang: status_gudang,
      status_karang_pilang: status_karang_pilang,
      date: DateTime.now(),
    );
    final json = jar.toJson();

    await docJaringan.set(json);
  }
}

class Jar {
  final String status_ngagel;
  final String status_gudang;
  final String status_karang_pilang;
  final DateTime date;

  Jar({
    required this.status_ngagel,
    required this.status_gudang,
    required this.status_karang_pilang,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_ngagel': status_ngagel,
        'status_gudang': status_gudang,
        'status_karang_pilang': status_karang_pilang,
        'date': date,
      };
}
