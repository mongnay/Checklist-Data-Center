import 'package:checklist/package.flutter/komponen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class replicatevmmenu extends StatefulWidget {
  @override
  replicatevmmenustate createState() => replicatevmmenustate();
}

class replicatevmmenustate extends State<replicatevmmenu> {
  final keteranganRJmail = TextEditingController();
  final keteranganRJSKA = TextEditingController();
  final keteranganRJDC2 = TextEditingController();
  final keteranganRJFilesvr = TextEditingController();
  final keteranganRJFilesvr2 = TextEditingController();
  final keteranganRJFilesvr3 = TextEditingController();
  final keteranganRJEproc = TextEditingController();
  final keteranganRJGIS = TextEditingController();
  final keteranganRJksvsr = TextEditingController();
  final keteranganRJMetabase = TextEditingController();
  final keteranganRJCaterLuar = TextEditingController();
  final keteranganRJCaterSBY = TextEditingController();
  final keteranganRJWebsiteSBY = TextEditingController();
  final keteranganRJTablue = TextEditingController();
  final keteranganRJTapesvr = TextEditingController();

  String selectedValueRJMail = '';
  String selectedValueRJSKA = '';
  String selectedValueRJDC2 = '';
  String selectedValueRJFilesvr = '';
  String selectedValueRJFilesvr2 = '';
  String selectedValueRJFilesvr3 = '';
  String selectedValueRJEproc = '';
  String selectedValueRJGIS = '';
  String selectedValueRJksvsvr = '';
  String selectedValueRJMetabase = '';
  String selectedValueRJCaterLuar = '';
  String selectedValueRJCaterSBY = '';
  String selectedValueRJWebsiteSBY = '';
  String selectedValueRJTablue = '';
  String selectedValueRJTapesvr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Replicate VM'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Mail'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJMail,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMail = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJMail,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMail = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJmail,
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
              Text('Replication Job SKA'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueRJSKA = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueRJSKA = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJSKA,
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
              Text('Replication Job DC2-svr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJDC2 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJDC2 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJDC2,
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
              Text('Replication Job Filesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJFilesvr,
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
              Text('Replication Job Filesvr2'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr2 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr2 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJFilesvr2,
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
              Text('Replication Job Filesvr3'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr3 = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr3 = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJFilesvr3,
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
              Text('Replication Job Eproc'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueRJEproc = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueRJEproc = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJEproc,
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
              Text('Replication Job GIS'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueRJGIS = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueRJGIS = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJGIS,
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
              Text('Replication Job ksvsvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJksvsvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJksvsvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJksvsr,
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
              Text('Replication Job Metabase'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMetabase = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMetabase = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJMetabase,
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
              Text('Replication Job Cater Luar'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterLuar = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterLuar = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJCaterLuar,
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
              Text('Replication Job Cater Surabaya'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterSBY = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterSBY = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJCaterSBY,
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
              Text('Replication Job Website SBY'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJWebsiteSBY = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJWebsiteSBY = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJWebsiteSBY,
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
              Text('Replication Job Tablue'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTablue = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTablue = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJTablue,
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
              Text('Replication Job Tapesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Success',
                    title: Text('Success'),
                    groupValue: selectedValueRJTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTapesvr = 'Success'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValueRJTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTapesvr = 'Failed'),
                  ),
                  TextField(
                    controller: keteranganRJTapesvr,
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
              final status_RJMail = selectedValueRJMail;
              final keterangan_RJMail = keteranganRJmail.text;
              final status_RJSKA = selectedValueRJSKA;
              final keterangan_RJSKA = keteranganRJSKA.text;
              final status_RJDC2 = selectedValueRJDC2;
              final keterangan_RJDC2 = keteranganRJDC2.text;
              final status_RJFilesvr = selectedValueRJFilesvr;
              final keterangan_RJFilesvr = keteranganRJFilesvr.text;
              final status_RJFilesvr2 = selectedValueRJFilesvr2;
              final keterangan_RJFilesvr2 = keteranganRJFilesvr2.text;
              final status_RJFilesvr3 = selectedValueRJFilesvr3;
              final keterangan_RJFilesvr3 = keteranganRJFilesvr3.text;
              final status_RJEproc = selectedValueRJEproc;
              final keterangan_RJEproc = keteranganRJEproc.text;
              final status_RJGis = selectedValueRJGIS;
              final keterangan_RJGis = keteranganRJGIS.text;
              final status_RJksvsvr = selectedValueRJksvsvr;
              final keterangan_RJksvsvr = keteranganRJksvsr.text;
              final status_RJMetabase = selectedValueRJMetabase;
              final keterangan_RJMetabase = keteranganRJMetabase.text;
              final status_RJCaterLuar = selectedValueRJCaterLuar;
              final keterangan_RJCaterLuar = keteranganRJCaterLuar.text;
              final status_RJCaterSBY = selectedValueRJCaterSBY;
              final keterangan_RJCaterSBY = keteranganRJCaterSBY.text;
              final status_RJWebsiteSBY = selectedValueRJWebsiteSBY;
              final keterangan_RJWebsiteSBY = keteranganRJWebsiteSBY.text;
              final status_RJTablue = selectedValueRJTablue;
              final keterangan_RJTablue = keteranganRJTablue.text;
              final status_RJTapesvr = selectedValueRJTapesvr;
              final keterangan_RJTapesvr = keteranganRJTapesvr.text;

              createReplicatevm(
                  status_RJMail: status_RJMail,
                  keterangan_RJMail: keterangan_RJMail,
                  status_RJSKA: status_RJSKA,
                  keterangan_RJSKA: keterangan_RJSKA,
                  status_RJDC2: status_RJDC2,
                  keterangan_RJDC2: keterangan_RJDC2,
                  status_RJFilesvr: status_RJFilesvr,
                  keterangan_RJFilesvr: keterangan_RJFilesvr,
                  status_RJFilesvr2: status_RJFilesvr2,
                  keterangan_RJFilesvr2: keterangan_RJFilesvr2,
                  status_RJFilesvr3: status_RJFilesvr3,
                  keterangan_RJFilesvr3: keterangan_RJFilesvr3,
                  status_RJEproc: status_RJEproc,
                  keterangan_RJEproc: keterangan_RJEproc,
                  status_RJGis: status_RJGis,
                  keterangan_RJGis: keterangan_RJGis,
                  status_RJksvsvr: status_RJksvsvr,
                  keterangan_RJksvsvr: keterangan_RJksvsvr,
                  status_RJMetabase: status_RJMetabase,
                  keterangan_RJMetabase: keterangan_RJMetabase,
                  status_RJCaterLuar: status_RJCaterLuar,
                  keterangan_RJCaterLuar: keterangan_RJCaterLuar,
                  status_RJCaterSBY: status_RJCaterSBY,
                  keterangan_RJCaterSBY: keterangan_RJCaterSBY,
                  status_RJWebsiteSBY: status_RJWebsiteSBY,
                  keterangan_RJWebsiteSBY: keterangan_RJWebsiteSBY,
                  status_RJTablue: status_RJTablue,
                  keterangan_RJTablue: keterangan_RJTablue,
                  status_RJTapesvr: status_RJTapesvr,
                  keterangan_RJTapesvr: keterangan_RJTapesvr);
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

  void createReplicatevm(
      {required String status_RJMail,
      keterangan_RJMail,
      status_RJSKA,
      keterangan_RJSKA,
      status_RJDC2,
      keterangan_RJDC2,
      status_RJFilesvr,
      keterangan_RJFilesvr,
      status_RJFilesvr2,
      keterangan_RJFilesvr2,
      status_RJFilesvr3,
      keterangan_RJFilesvr3,
      status_RJEproc,
      keterangan_RJEproc,
      status_RJGis,
      keterangan_RJGis,
      status_RJksvsvr,
      keterangan_RJksvsvr,
      status_RJMetabase,
      keterangan_RJMetabase,
      status_RJCaterLuar,
      keterangan_RJCaterLuar,
      status_RJCaterSBY,
      keterangan_RJCaterSBY,
      status_RJWebsiteSBY,
      keterangan_RJWebsiteSBY,
      status_RJTablue,
      keterangan_RJTablue,
      status_RJTapesvr,
      keterangan_RJTapesvr}) async {
    final docReplicate =
        FirebaseFirestore.instance.collection('replicate vm').doc();

    final replicate = Replicate(
      status_RJMail: status_RJMail,
      keterangan_RJMail: keterangan_RJMail,
      status_RJSKA: status_RJSKA,
      keterangan_RJSKA: keterangan_RJSKA,
      status_RJDC2: status_RJDC2,
      keterangan_RJDC2: keterangan_RJDC2,
      status_RJFilesvr: status_RJFilesvr,
      keterangan_RJFilesvr: keterangan_RJFilesvr,
      status_RJFilesvr2: status_RJFilesvr2,
      keterangan_RJFilesvr2: keterangan_RJFilesvr2,
      status_RJFilesvr3: status_RJFilesvr3,
      keterangan_RJFilesvr3: keterangan_RJFilesvr3,
      status_RJEproc: status_RJEproc,
      keterangan_RJEproc: keterangan_RJEproc,
      status_RJGis: status_RJGis,
      keterangan_RJGis: keterangan_RJGis,
      status_RJksvsvr: status_RJksvsvr,
      keterangan_RJksvsvr: keterangan_RJksvsvr,
      status_RJMetabase: status_RJMetabase,
      keterangan_RJMetabase: keterangan_RJMetabase,
      status_RJCaterLuar: status_RJCaterLuar,
      keterangan_RJCaterLuar: keterangan_RJCaterLuar,
      status_RJCaterSBY: status_RJCaterSBY,
      keterangan_RJCaterSBY: keterangan_RJCaterSBY,
      status_RJWebsiteSBY: status_RJWebsiteSBY,
      keterangan_RJWebsiteSBY: keterangan_RJWebsiteSBY,
      status_RJTablue: status_RJTablue,
      keterangan_RJTablue: keterangan_RJTablue,
      status_RJTapesvr: status_RJTapesvr,
      keterangan_RJTapesvr: keterangan_RJTapesvr,
      date: DateTime.now(),
    );
    final json = replicate.toJson();

    await docReplicate.set(json);
  }
}

class Replicate {
  final String status_RJMail;
  final String keterangan_RJMail;
  final String status_RJSKA;
  final String keterangan_RJSKA;
  final String status_RJDC2;
  final String keterangan_RJDC2;
  final String status_RJFilesvr;
  final String keterangan_RJFilesvr;
  final String status_RJFilesvr2;
  final String keterangan_RJFilesvr2;
  final String status_RJFilesvr3;
  final String keterangan_RJFilesvr3;
  final String status_RJEproc;
  final String keterangan_RJEproc;
  final String status_RJGis;
  final String keterangan_RJGis;
  final String status_RJksvsvr;
  final String keterangan_RJksvsvr;
  final String status_RJMetabase;
  final String keterangan_RJMetabase;
  final String status_RJCaterLuar;
  final String keterangan_RJCaterLuar;
  final String status_RJCaterSBY;
  final String keterangan_RJCaterSBY;
  final String status_RJWebsiteSBY;
  final String keterangan_RJWebsiteSBY;
  final String status_RJTablue;
  final String keterangan_RJTablue;
  final String status_RJTapesvr;
  final String keterangan_RJTapesvr;
  final DateTime date;

  Replicate({
    required this.status_RJMail,
    required this.keterangan_RJMail,
    required this.status_RJSKA,
    required this.keterangan_RJSKA,
    required this.status_RJDC2,
    required this.keterangan_RJDC2,
    required this.status_RJFilesvr,
    required this.keterangan_RJFilesvr,
    required this.status_RJFilesvr2,
    required this.keterangan_RJFilesvr2,
    required this.status_RJFilesvr3,
    required this.keterangan_RJFilesvr3,
    required this.status_RJEproc,
    required this.keterangan_RJEproc,
    required this.status_RJGis,
    required this.keterangan_RJGis,
    required this.status_RJksvsvr,
    required this.keterangan_RJksvsvr,
    required this.status_RJMetabase,
    required this.keterangan_RJMetabase,
    required this.status_RJCaterLuar,
    required this.keterangan_RJCaterLuar,
    required this.status_RJCaterSBY,
    required this.keterangan_RJCaterSBY,
    required this.status_RJWebsiteSBY,
    required this.keterangan_RJWebsiteSBY,
    required this.status_RJTablue,
    required this.keterangan_RJTablue,
    required this.status_RJTapesvr,
    required this.keterangan_RJTapesvr,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_Replicate_Job_Mail': status_RJMail,
        'keterangan_Replicate_Job_Mail': keterangan_RJMail,
        'status_Replicate_Job_SKA': status_RJSKA,
        'keterangan_Replicate_Job_SKA': keterangan_RJSKA,
        'status_Replicate_Job_DC2-SVR': status_RJDC2,
        'keterangan_Replicate_Job_DC2-SVR': keterangan_RJDC2,
        'status_Replicate_Job_Filesvr': status_RJFilesvr,
        'keterangan_Replicate_Job_Filesvr': keterangan_RJFilesvr,
        'status_Replicate_Job_Filesvr2': status_RJFilesvr2,
        'keterangan_Replicate_Job_Filesvr2': keterangan_RJFilesvr2,
        'status_Replicate_Job_Filesvr3': status_RJFilesvr3,
        'keterangan_Replicate_Job_Filesvr3': keterangan_RJFilesvr3,
        'status_Replicate_Job_Eproc': status_RJEproc,
        'keterangan_Replicate_Job_Eproc': keterangan_RJEproc,
        'status_Replicate_Job_GIS': status_RJGis,
        'keterangan_Replicate_Job_GIS': keterangan_RJGis,
        'status_Replicate_Job_ksvsvr': status_RJksvsvr,
        'keterangan_Replicate_Job_ksvsvr': keterangan_RJksvsvr,
        'status_Replicate_Job_Metabase': status_RJMetabase,
        'keterangan_Replicate_Job_Metabase': keterangan_RJMetabase,
        'status_Replicate_Job_Cater_Luar': status_RJCaterLuar,
        'keterangan_Replicate_Job_Cater_Luar': keterangan_RJCaterLuar,
        'status_Replicate_Job_Cater_Surabaya': status_RJCaterSBY,
        'keterangan_Replicate_Job_Cater_Surabaya': keterangan_RJCaterSBY,
        'status_Replicate_Job_Website_SBY': status_RJWebsiteSBY,
        'keterangan_Replicate_Job_Website_SBY': keterangan_RJWebsiteSBY,
        'status_Replicate_Job_Tablue': status_RJTablue,
        'keterangan_Replicate_Job_Tablue': keterangan_RJTablue,
        'status_Replicate_Job_Tapesvr': status_RJTapesvr,
        'keterangan_Replicate_Job_Tapesvr': keterangan_RJTapesvr,
        'date': date,
      };
}
