import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'komponen.dart';

class backupvmmenu extends StatefulWidget {
  @override
  backupvmmenustate createState() => backupvmmenustate();
}

class backupvmmenustate extends State<backupvmmenu> {
  final keteranganSmail = TextEditingController();
  final keteranganSSKA = TextEditingController();
  final keteranganSDC2 = TextEditingController();
  final keteranganSFilesvr = TextEditingController();
  final keteranganSFilesvr2 = TextEditingController();
  final keteranganSFilesvr3 = TextEditingController();
  final keteranganSEproc = TextEditingController();
  final keteranganSGIS = TextEditingController();
  final keteranganSksvsr = TextEditingController();
  final keteranganSMetabase = TextEditingController();
  final keteranganSCaterLuar = TextEditingController();
  final keteranganSCaterSBY = TextEditingController();
  final keteranganSWebsiteSBY = TextEditingController();
  final keteranganSTablue = TextEditingController();
  final keteranganSTapesvr = TextEditingController();

  String selectedValueSMail = '';
  String selectedValueSSKA = '';
  String selectedValueSDC2 = '';
  String selectedValueSFilesvr = '';
  String selectedValueSFilesvr2 = '';
  String selectedValueSFilesvr3 = '';
  String selectedValueSEproc = '';
  String selectedValueSGIS = '';
  String selectedValueSksvsvr = '';
  String selectedValueSMetabase = '';
  String selectedValueSCaterLuar = '';
  String selectedValueSCaterSBY = '';
  String selectedValueSWebsiteSBY = '';
  String selectedValueSTablue = '';
  String selectedValueSTapesvr = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backup VM'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Mail'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSMail,
                    onChanged: (value) =>
                        setState(() => selectedValueSMail = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSMail,
                    onChanged: (value) =>
                        setState(() => selectedValueSMail = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSmail,
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
              Text('Server SKA'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueSSKA = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueSSKA = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSSKA,
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
              Text('Server DC2-SVR'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueSDC2 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueSDC2 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSDC2,
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
              Text('Server Filesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSFilesvr,
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
              Text('Server Filesvr2'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr2 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr2 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSFilesvr2,
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
              Text('Server Filesvr3'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr3 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr3 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSFilesvr3,
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
              Text('Server Eproc'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueSEproc = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueSEproc = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSEproc,
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
              Text('Server GIS'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueSGIS = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueSGIS = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSGIS,
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
              Text('Server ksvsvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSksvsvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSksvsvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSksvsr,
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
              Text('Server Metabase'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueSMetabase = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueSMetabase = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSMetabase,
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
              Text('Server Cater Luar'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterLuar = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterLuar = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSCaterLuar,
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
              Text('Server Cater Surabaya'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterSBY = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterSBY = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSCaterSBY,
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
              Text('Server Website SBY'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSWebsiteSBY = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSWebsiteSBY = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSWebsiteSBY,
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
              Text('Server Tablue'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueSTablue = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueSTablue = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSTablue,
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
              Text('Server Tapesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueSTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSTapesvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueSTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSTapesvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganSTapesvr,
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
              final status_SMail = selectedValueSMail;
              final keterangan_SMail = keteranganSmail.text;
              final status_SSKA = selectedValueSSKA;
              final keterangan_SSKA = keteranganSSKA.text;
              final status_SDC2 = selectedValueSDC2;
              final keterangan_SDC2 = keteranganSDC2.text;
              final status_SFilesvr = selectedValueSFilesvr;
              final keterangan_SFilesvr = keteranganSFilesvr.text;
              final status_SFilesvr2 = selectedValueSFilesvr2;
              final keterangan_SFilesvr2 = keteranganSFilesvr2.text;
              final status_SFilesvr3 = selectedValueSFilesvr3;
              final keterangan_SFilesvr3 = keteranganSFilesvr3.text;
              final status_SEproc = selectedValueSEproc;
              final keterangan_SEproc = keteranganSEproc.text;
              final status_SGis = selectedValueSGIS;
              final keterangan_SGis = keteranganSGIS.text;
              final status_Sksvsvr = selectedValueSksvsvr;
              final keterangan_Sksvsvr = keteranganSksvsr.text;
              final status_SMetabase = selectedValueSMetabase;
              final keterangan_SMetabase = keteranganSMetabase.text;
              final status_SCaterLuar = selectedValueSCaterLuar;
              final keterangan_SCaterLuar = keteranganSCaterLuar.text;
              final status_SCaterSBY = selectedValueSCaterSBY;
              final keterangan_SCaterSBY = keteranganSCaterSBY.text;
              final status_SWebsiteSBY = selectedValueSWebsiteSBY;
              final keterangan_SWebsiteSBY = keteranganSWebsiteSBY.text;
              final status_STablue = selectedValueSTablue;
              final keterangan_STablue = keteranganSTablue.text;
              final status_STapesvr = selectedValueSTapesvr;
              final keterangan_STapesvr = keteranganSTapesvr.text;

              createBackupvm(
                  status_SMail: status_SMail,
                  keterangan_SMail: keterangan_SMail,
                  status_SSKA: status_SSKA,
                  keterangan_SSKA: keterangan_SSKA,
                  status_SDC2: status_SDC2,
                  keterangan_SDC2: keterangan_SDC2,
                  status_SFilesvr: status_SFilesvr,
                  keterangan_SFilesvr: keterangan_SFilesvr,
                  status_SFilesvr2: status_SFilesvr2,
                  keterangan_SFilesvr2: keterangan_SFilesvr2,
                  status_SFilesvr3: status_SFilesvr3,
                  keterangan_SFilesvr3: keterangan_SFilesvr3,
                  status_SEproc: status_SEproc,
                  keterangan_SEproc: keterangan_SEproc,
                  status_SGis: status_SGis,
                  keterangan_SGis: keterangan_SGis,
                  status_Sksvsvr: status_Sksvsvr,
                  keterangan_Sksvsvr: keterangan_Sksvsvr,
                  status_SMetabase: status_SMetabase,
                  keterangan_SMetabase: keterangan_SMetabase,
                  status_SCaterLuar: status_SCaterLuar,
                  keterangan_SCaterLuar: keterangan_SCaterLuar,
                  status_SCaterSBY: status_SCaterSBY,
                  keterangan_SCaterSBY: keterangan_SCaterSBY,
                  status_SWebsiteSBY: status_SWebsiteSBY,
                  keterangan_SWebsiteSBY: keterangan_SWebsiteSBY,
                  status_STablue: status_STablue,
                  keterangan_STablue: keterangan_STablue,
                  status_STapesvr: status_STapesvr,
                  keterangan_STapesvr: keterangan_STapesvr);

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

  void createBackupvm(
      {required String status_SMail,
      keterangan_SMail,
      status_SSKA,
      keterangan_SSKA,
      status_SDC2,
      keterangan_SDC2,
      status_SFilesvr,
      keterangan_SFilesvr,
      status_SFilesvr2,
      keterangan_SFilesvr2,
      status_SFilesvr3,
      keterangan_SFilesvr3,
      status_SEproc,
      keterangan_SEproc,
      status_SGis,
      keterangan_SGis,
      status_Sksvsvr,
      keterangan_Sksvsvr,
      status_SMetabase,
      keterangan_SMetabase,
      status_SCaterLuar,
      keterangan_SCaterLuar,
      status_SCaterSBY,
      keterangan_SCaterSBY,
      status_SWebsiteSBY,
      keterangan_SWebsiteSBY,
      status_STablue,
      keterangan_STablue,
      status_STapesvr,
      keterangan_STapesvr}) async {
    final docBackup = FirebaseFirestore.instance.collection('backup vm').doc();

    final backup = Backup(
      status_SMail: status_SMail,
      keterangan_SMail: keterangan_SMail,
      status_SSKA: status_SSKA,
      keterangan_SSKA: keterangan_SSKA,
      status_SDC2: status_SDC2,
      keterangan_SDC2: keterangan_SDC2,
      status_SFilesvr: status_SFilesvr,
      keterangan_SFilesvr: keterangan_SFilesvr,
      status_SFilesvr2: status_SFilesvr2,
      keterangan_SFilesvr2: keterangan_SFilesvr2,
      status_SFilesvr3: status_SFilesvr3,
      keterangan_SFilesvr3: keterangan_SFilesvr3,
      status_SEproc: status_SEproc,
      keterangan_SEproc: keterangan_SEproc,
      status_SGis: status_SGis,
      keterangan_SGis: keterangan_SGis,
      status_Sksvsvr: status_Sksvsvr,
      keterangan_Sksvsvr: keterangan_Sksvsvr,
      status_SMetabase: status_SMetabase,
      keterangan_SMetabase: keterangan_SMetabase,
      status_SCaterLuar: status_SCaterLuar,
      keterangan_SCaterLuar: keterangan_SCaterLuar,
      status_SCaterSBY: status_SCaterSBY,
      keterangan_SCaterSBY: keterangan_SCaterSBY,
      status_SWebsiteSBY: status_SWebsiteSBY,
      keterangan_SWebsiteSBY: keterangan_SWebsiteSBY,
      status_STablue: status_STablue,
      keterangan_STablue: keterangan_STablue,
      status_STapesvr: status_STapesvr,
      keterangan_STapesvr: keterangan_STapesvr,
      date: DateTime.now(),
    );
    final json = backup.toJson();

    await docBackup.set(json);
  }
}

class Backup {
  final String status_SMail;
  final String keterangan_SMail;
  final String status_SSKA;
  final String keterangan_SSKA;
  final String status_SDC2;
  final String keterangan_SDC2;
  final String status_SFilesvr;
  final String keterangan_SFilesvr;
  final String status_SFilesvr2;
  final String keterangan_SFilesvr2;
  final String status_SFilesvr3;
  final String keterangan_SFilesvr3;
  final String status_SEproc;
  final String keterangan_SEproc;
  final String status_SGis;
  final String keterangan_SGis;
  final String status_Sksvsvr;
  final String keterangan_Sksvsvr;
  final String status_SMetabase;
  final String keterangan_SMetabase;
  final String status_SCaterLuar;
  final String keterangan_SCaterLuar;
  final String status_SCaterSBY;
  final String keterangan_SCaterSBY;
  final String status_SWebsiteSBY;
  final String keterangan_SWebsiteSBY;
  final String status_STablue;
  final String keterangan_STablue;
  final String status_STapesvr;
  final String keterangan_STapesvr;
  final DateTime date;

  Backup({
    required this.status_SMail,
    required this.keterangan_SMail,
    required this.status_SSKA,
    required this.keterangan_SSKA,
    required this.status_SDC2,
    required this.keterangan_SDC2,
    required this.status_SFilesvr,
    required this.keterangan_SFilesvr,
    required this.status_SFilesvr2,
    required this.keterangan_SFilesvr2,
    required this.status_SFilesvr3,
    required this.keterangan_SFilesvr3,
    required this.status_SEproc,
    required this.keterangan_SEproc,
    required this.status_SGis,
    required this.keterangan_SGis,
    required this.status_Sksvsvr,
    required this.keterangan_Sksvsvr,
    required this.status_SMetabase,
    required this.keterangan_SMetabase,
    required this.status_SCaterLuar,
    required this.keterangan_SCaterLuar,
    required this.status_SCaterSBY,
    required this.keterangan_SCaterSBY,
    required this.status_SWebsiteSBY,
    required this.keterangan_SWebsiteSBY,
    required this.status_STablue,
    required this.keterangan_STablue,
    required this.status_STapesvr,
    required this.keterangan_STapesvr,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_Server_Mail': status_SMail,
        'keterangan_Server_Mail': keterangan_SMail,
        'status_Server_SKA': status_SSKA,
        'keterangan_Server_SKA': keterangan_SSKA,
        'status_Server_DC2-SVR': status_SDC2,
        'keterangan_Server_DC2-SVR': keterangan_SDC2,
        'status_Server_Filesvr': status_SFilesvr,
        'keterangan_Server_Filesvr': keterangan_SFilesvr,
        'status_Server_Filesvr2': status_SFilesvr2,
        'keterangan_Server_Filesvr2': keterangan_SFilesvr2,
        'status_Server_Filesvr3': status_SFilesvr3,
        'keterangan_Server_Filesvr3': keterangan_SFilesvr3,
        'status_Server_Eproc': status_SEproc,
        'keterangan_Server_Eproc': keterangan_SEproc,
        'status_Server_GIS': status_SGis,
        'keterangan_Server_GIS': keterangan_SGis,
        'status_Server_ksvsvr': status_Sksvsvr,
        'keterangan_Server_ksvsvr': keterangan_Sksvsvr,
        'status_Server_Metabase': status_SMetabase,
        'keterangan_Server_Metabase': keterangan_SMetabase,
        'status_Server_Cater_Luar': status_SCaterLuar,
        'keterangan_Server_Cater_Luar': keterangan_SCaterLuar,
        'status_Server_Cater_Surabaya': status_SCaterSBY,
        'keterangan_Server_Cater_Surabaya': keterangan_SCaterSBY,
        'status_Server_Website_SBY': status_SWebsiteSBY,
        'keterangan_Server_Website_SBY': keterangan_SWebsiteSBY,
        'status_Server_Tablue': status_STablue,
        'keterangan_Server_Tablue': keterangan_STablue,
        'status_Server_Tapesvr': status_STapesvr,
        'keterangan_Server_Tapesvr': keterangan_STapesvr,
        'date': date,
      };
}
