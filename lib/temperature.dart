import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package.flutter/aspek.dart';

class temperMenu extends StatelessWidget {
  final suhuRNI = TextEditingController();
  final humidityRNI = TextEditingController();
  final suhuRA = TextEditingController();
  final humidityRA = TextEditingController();
  final suhuRF = TextEditingController();
  final humidityRD = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KOMPONEN TEMPERATURE'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Text("Suhu Rack Network Internal"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: suhuRNI,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      //style: TextStyle(color: Colors.redAccent),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack Network Internal"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: humidityRNI,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Suhu Rack A"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: suhuRA,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack A"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: humidityRA,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Suhu Rack F"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: suhuRF,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack F"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      controller: humidityRD,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            MaterialButton(
              onPressed: () {
                final suhu_rack_network_internal = suhuRNI.text;
                final humidity_rack_network_internal = humidityRNI.text;
                final suhu_rack_a = suhuRA.text;
                final humidity_rack_a = humidityRA.text;
                final suhu_rack_f = suhuRF.text;
                final humidity_rack_f = humidityRD.text;

                createTemperature(
                    suhu_rack_network_internal: suhu_rack_network_internal,
                    humidity_rack_network_internal:
                        humidity_rack_network_internal,
                    suhu_rack_a: suhu_rack_a,
                    humidity_rack_a: humidity_rack_a,
                    suhu_rack_f: suhu_rack_f,
                    humidity_rack_f: humidity_rack_f);

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(suhuRNI.text),
                        );
                      },
                    );

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
          ],
        ),
      ),
    );
  }

  Future createTemperature(
      {required String suhu_rack_network_internal,
      humidity_rack_network_internal,
      suhu_rack_a,
      humidity_rack_a,
      suhu_rack_f,
      humidity_rack_f}) async {
    final docTemperature =
        FirebaseFirestore.instance.collection('temperature').doc();

    final temp = Temp(
      suhu_rack_network_internal: suhu_rack_network_internal,
      humidity_rack_network_internal: humidity_rack_network_internal,
      suhu_rack_a: suhu_rack_a,
      humidity_rack_a: humidity_rack_a,
      suhu_rack_f: suhu_rack_f,
      humidity_rack_f: humidity_rack_f,
      date: DateTime.now(),
    );
    final json = temp.toJson();

    await docTemperature.set(json);
  }
}

class Temp {
  final String suhu_rack_network_internal;
  final String humidity_rack_network_internal;
  final String suhu_rack_a;
  final String humidity_rack_a;
  final String suhu_rack_f;
  final String humidity_rack_f;
  final DateTime date;

  Temp({
    required this.suhu_rack_network_internal,
    required this.humidity_rack_network_internal,
    required this.suhu_rack_a,
    required this.humidity_rack_a,
    required this.suhu_rack_f,
    required this.humidity_rack_f,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'suhu_rack_network_internal': suhu_rack_network_internal,
        'humidity_rack_network_internal': humidity_rack_network_internal,
        'suhu_rack_a': suhu_rack_a,
        'humidity_rack_a': humidity_rack_a,
        'suhu_rack_f': suhu_rack_f,
        'humidity_rack_f': humidity_rack_f,
        'date': date,
      };
}
