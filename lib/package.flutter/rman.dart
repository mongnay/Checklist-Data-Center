import 'package:checklist/package.flutter/keterangan.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'komponen.dart';

//selectedValuerman
class rmanmenu extends StatefulWidget {
  @override
  rmanmenustate createState() => rmanmenustate();
}

class rmanmenustate extends State<rmanmenu> {
  final keteranganRMAN = TextEditingController();
  String selectedValuerman = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RMAN'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text('pdamcdb.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: "Success",
                    title: Text('Success'),
                    groupValue: selectedValuerman,
                    onChanged: (value) =>
                        setState(() => selectedValuerman = "Success"),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuerman,
                    onChanged: (value) =>
                        setState(() => selectedValuerman = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRMAN,
                    decoration: InputDecoration(
                      hintText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
          MaterialButton(
            onPressed: () {
              final status_rman = selectedValuerman;
              final keterangan_rman = keteranganRMAN.text;

              createRman(
                  status_rman: status_rman, keterangan_rman: keterangan_rman);

              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => komponenMenu()),
              );
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

  void createRman({required String status_rman, keterangan_rman}) async {
    final docRman = FirebaseFirestore.instance.collection('rman').doc();

    final rman = Rman(
      status_rman: status_rman,
      keterangan_rman: keterangan_rman,
      date: DateTime.now(),
    );
    final json = rman.toJson();

    await docRman.set(json);
  }
}

class Rman {
  final String status_rman;
  final String keterangan_rman;
  final DateTime date;

  Rman({
    required this.status_rman,
    required this.keterangan_rman,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_pdamcdb.log': status_rman,
        'keterangan_pdamdcdb.log': keterangan_rman,
        'date': date,
      };
}
