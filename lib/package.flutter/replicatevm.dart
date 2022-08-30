import 'package:flutter/material.dart';

class replicatevmmenu extends StatefulWidget {
  @override
  replicatevmmenustate createState() => replicatevmmenustate();
}

class replicatevmmenustate extends State<replicatevmmenu> {
  int selectedValueRJMail = 0;
  int selectedValueRJSKA = 0;
  int selectedValueRJDC2 = 0;
  int selectedValueRJFilesvr = 0;
  int selectedValueRJFilesvr2 = 0;
  int selectedValueRJFilesvr3 = 0;
  int selectedValueRJEproc = 0;
  int selectedValueRJGIS = 0;
  int selectedValueRJksvsvr = 0;
  int selectedValueRJMetabase = 0;
  int selectedValueRJCaterLuar = 0;
  int selectedValueRJCaterSBY = 0;
  int selectedValueRJWebsiteSBY = 0;
  int selectedValueRJTablue = 0;
  int selectedValueRJTapesvr = 0;

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
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJMail,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMail = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJMail,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMail = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job SKA'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueRJSKA = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJSKA,
                    onChanged: (value) =>
                        setState(() => selectedValueRJSKA = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job DC2-svr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJDC2 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJDC2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJDC2 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Filesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Filesvr2'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr2 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr2,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr2 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Filesvr3'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr3 = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJFilesvr3,
                    onChanged: (value) =>
                        setState(() => selectedValueRJFilesvr3 = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Eproc'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueRJEproc = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJEproc,
                    onChanged: (value) =>
                        setState(() => selectedValueRJEproc = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job GIS'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueRJGIS = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJGIS,
                    onChanged: (value) =>
                        setState(() => selectedValueRJGIS = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job ksvsvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJksvsvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJksvsvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJksvsvr = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Metabase'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMetabase = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJMetabase,
                    onChanged: (value) =>
                        setState(() => selectedValueRJMetabase = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Cater Luar'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterLuar = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJCaterLuar,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterLuar = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Cater Surabaya'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterSBY = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJCaterSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJCaterSBY = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Website SBY'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJWebsiteSBY = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJWebsiteSBY,
                    onChanged: (value) =>
                        setState(() => selectedValueRJWebsiteSBY = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Tablue'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTablue = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJTablue,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTablue = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text('Replication Job Tapesvr'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValueRJTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTapesvr = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValueRJTapesvr,
                    onChanged: (value) =>
                        setState(() => selectedValueRJTapesvr = 2),
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
