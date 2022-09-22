import 'package:checklist/package.flutter/aspek.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class keteranganMenu extends StatelessWidget {
  final notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checklist Data Center',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keterangan'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: notes,
                  expands: true,
                  maxLines: null,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  if (notes != null) {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: Text("Review"),
                              content: Text("Keterangan Tersimpan"),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Container(
                                      color: Colors.white,
                                      padding: EdgeInsets.all(14),
                                      child: Text("Selesai"),
                                    ))
                              ],
                            ));
                  }
                  final catatan = notes.text;

                  createKeterangan(
                    catatan: catatan,
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
      ),
    );
  }

  void createKeterangan({required String catatan}) async {
    final docKeterangan =
        FirebaseFirestore.instance.collection('keterangan').doc();

    final ket = Ket(
      catatan: catatan,
      date: DateTime.now(),
    );

    final json = ket.toJson();

    await docKeterangan.set(json);
  }
}

class Ket {
  final String catatan;
  final DateTime date;

  Ket({
    required this.catatan,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'catatan': catatan,
        'date': date,
      };
}
