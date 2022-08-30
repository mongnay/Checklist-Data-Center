import 'package:flutter/material.dart';

class backupvmmenu extends StatefulWidget {
  @override
  backupvmmenustate createState() => backupvmmenustate();
}

class backupvmmenustate extends State<backupvmmenu> {
  int selectedValueSMail = 0;
  int selectedValueSSKA = 0;
  int selectedValueSDC2 = 0;
  int selectedValueSFilesvr = 0;
  int selectedValueSFilesvr2 = 0;
  int selectedValueSFilesvr3 = 0;
  int selectedValueSEproc = 0;
  int selectedValueSGIS = 0;
  int selectedValueSksvsvr = 0;
  int selectedValueSMetabase = 0;
  int selectedValueSCaterLuar = 0;
  int selectedValueSCaterSBY = 0;
  int selectedValueSWebsiteSBY = 0;
  int selectedValueSTablue = 0;
  int selectedValueSTapesvr = 0;

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
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSMail,
                    onChanged: (value) =>
                        setState(() => selectedValueSMail = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSMail,
                    onChanged: (value) =>
                        setState(() => selectedValueSMail = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server SKA'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSSKA,
                    onChanged: (value) => setState(() => selectedValueSSKA = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSSKA,
                    onChanged: (value) => setState(() => selectedValueSSKA = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server DC2-SVR'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSDC2,
                    onChanged: (value) => setState(() => selectedValueSDC2 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSDC2,
                    onChanged: (value) => setState(() => selectedValueSDC2 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Filesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Filesvr2'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr2 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr2 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Filesvr3'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr3 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueSFilesvr3 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Eproc'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueSEproc = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueSEproc = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server GIS'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSGIS,
                    onChanged: (value) => setState(() => selectedValueSGIS = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSGIS,
                    onChanged: (value) => setState(() => selectedValueSGIS = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server ksvsvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSksvsvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSksvsvr = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Metabase'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueSMetabase = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueSMetabase = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Cater Luar'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterLuar = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterLuar = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Cater Surabaya'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterSBY = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSCaterSBY = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Website SBY'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSWebsiteSBY = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueSWebsiteSBY = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Tablue'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueSTablue = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueSTablue = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Server Tapesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueSTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSTapesvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueSTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueSTapesvr = 2),
                  ),
                ]),
              ),
            ]),
          ),
          MaterialButton(
            onPressed: () {},
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
