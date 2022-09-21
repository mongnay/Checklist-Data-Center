import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'komponen.dart';

class dumpmenu extends StatefulWidget {
  @override
  dumpmenustate createState() => dumpmenustate();
}

class dumpmenustate extends State<dumpmenu> {
  String selectedValuepdamnet = '';
  final keteranganpdamnet = TextEditingController();
  String selectedValue12pdam = '';
  final keterangan12pdam = TextEditingController();
  String selectedValuedbpost = '';
  final keterangandbpost = TextEditingController();
  String selectedValuedbout = '';
  final keterangandbout = TextEditingController();
  String selectedValuegis = '';
  final keterangangis = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUMP'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text('pdamnet.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValuepdamnet,
                    onChanged: (value) =>
                        setState(() => selectedValuepdamnet = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuepdamnet,
                    onChanged: (value) =>
                        setState(() => selectedValuepdamnet = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganpdamnet,
                    decoration: InputDecoration(
                      hintText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
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
              Text('12pdam.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValue12pdam,
                    onChanged: (value) =>
                        setState(() => selectedValue12pdam = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValue12pdam,
                    onChanged: (value) =>
                        setState(() => selectedValue12pdam = 'Failed'),
                  ),
                  TextField(
                    controller: keterangan12pdam,
                    decoration: InputDecoration(
                      hintText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
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
              Text('db_post.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValuedbpost,
                    onChanged: (value) =>
                        setState(() => selectedValuedbpost = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuedbpost,
                    onChanged: (value) =>
                        setState(() => selectedValuedbpost = 'Failed'),
                  ),
                  TextField(
                    controller: keterangandbpost,
                    decoration: InputDecoration(
                      hintText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
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
              Text('dbout.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValuedbout,
                    onChanged: (value) =>
                        setState(() => selectedValuedbout = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuedbout,
                    onChanged: (value) =>
                        setState(() => selectedValuedbout = 'Failed'),
                  ),
                  TextField(
                    controller: keterangandbout,
                    decoration: InputDecoration(
                      hintText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
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
              Text('gispdam.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValuegis,
                    onChanged: (value) =>
                        setState(() => selectedValuegis = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuegis,
                    onChanged: (value) =>
                        setState(() => selectedValuegis = 'Failed'),
                  ),
                  TextField(
                    controller: keterangangis,
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
              final status_pdamnet = selectedValuepdamnet;
              final keterangan_pdamnet = keteranganpdamnet.text;
              final status_12pdam = selectedValue12pdam;
              final keterangan_12pdam = keterangan12pdam.text;
              final status_dbpost = selectedValuedbpost;
              final keterangan_dbpost = keterangandbpost.text;
              final status_dbout = selectedValuedbout;
              final keterangan_dbout = keterangandbout.text;
              final status_gis = selectedValuegis;
              final keterangan_gis = keterangangis.text;

              createDump(
                  status_pdamnet: status_pdamnet,
                  keterangan_pdamnet: keterangan_pdamnet,
                  status_12pdam: status_12pdam,
                  keterangan_12pdam: keterangan_12pdam,
                  status_dbpost: status_dbpost,
                  keterangan_dbpost: keterangan_dbpost,
                  status_dbout: status_dbout,
                  keterangan_dbout: keterangan_dbout,
                  status_gis: status_gis,
                  keterangan_gis: keterangan_gis);

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

  void createDump(
      {required String status_pdamnet,
      keterangan_pdamnet,
      status_12pdam,
      keterangan_12pdam,
      status_dbpost,
      keterangan_dbpost,
      status_dbout,
      keterangan_dbout,
      status_gis,
      keterangan_gis}) async {
    final docDump = FirebaseFirestore.instance.collection('dump').doc();

    final dump = Dump(
      status_pdamnet: status_pdamnet,
      keterangan_pdamnet: keterangan_pdamnet,
      status_12pdam: status_12pdam,
      keterangan_12pdam: keterangan_12pdam,
      status_dbpost: status_dbpost,
      keterangan_dbpost: keterangan_dbpost,
      status_dbout: status_dbout,
      keterangan_dbout: keterangan_dbout,
      status_gis: status_gis,
      keterangan_gis: keterangan_gis,
      date: DateTime.now(),
    );
    final json = dump.toJson();

    await docDump.set(json);
  }
}

class Dump {
  final String status_pdamnet;
  final String keterangan_pdamnet;
  final String status_12pdam;
  final String keterangan_12pdam;
  final String status_dbpost;
  final String keterangan_dbpost;
  final String status_dbout;
  final String keterangan_dbout;
  final String status_gis;
  final String keterangan_gis;
  final DateTime date;

  Dump({
    required this.status_pdamnet,
    required this.keterangan_pdamnet,
    required this.status_12pdam,
    required this.keterangan_12pdam,
    required this.status_dbpost,
    required this.keterangan_dbpost,
    required this.status_dbout,
    required this.keterangan_dbout,
    required this.status_gis,
    required this.keterangan_gis,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_pdamnet.log': status_pdamnet,
        'keterangan_pdamnet.log': keterangan_pdamnet,
        'status_12pdam.log': status_12pdam,
        'keterangan_12pdam.log': keterangan_12pdam,
        'status_db_post.log': status_dbpost,
        'keterangan_db_posy.log': keterangan_dbpost,
        'status_dbout.log': status_dbout,
        'keterangan_dbout.log': keterangan_dbout,
        'status_gispdam.log': status_gis,
        'keterangan_gispdam.log': keterangan_gis,
        'date': date,
      };
}
