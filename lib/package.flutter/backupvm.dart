import 'package:flutter/material.dart';

import 'komponen.dart';

class backupvmmenu extends StatefulWidget {
  @override
  backupvmmenustate createState() => backupvmmenustate();
}

class backupvmmenustate extends State<backupvmmenu> {
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
}
