import 'package:flutter/material.dart';

class replicatevmmenu extends StatefulWidget {
  @override
  replicatevmmenustate createState() => replicatevmmenustate();
}

class replicatevmmenustate extends State<replicatevmmenu> {
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
