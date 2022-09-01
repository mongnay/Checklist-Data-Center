import 'package:flutter/material.dart';

class dumpmenu extends StatefulWidget {
  @override
  dumpmenustate createState() => dumpmenustate();
}

class dumpmenustate extends State<dumpmenu> {
  int selectedValuepdamnet = 0;
  int selectedValue12pdam = 0;
  int selectedValuedbpost = 0;
  int selectedValuedbout = 0;
  int selectedValuegis = 0;

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
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValuepdamnet,
                    onChanged: (value) =>
                        setState(() => selectedValuepdamnet = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValuepdamnet,
                    onChanged: (value) =>
                        setState(() => selectedValuepdamnet = 2),
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
              Text('12pdam.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValue12pdam,
                    onChanged: (value) =>
                        setState(() => selectedValue12pdam = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValue12pdam,
                    onChanged: (value) =>
                        setState(() => selectedValue12pdam = 2),
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
              Text('db_post.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValuedbpost,
                    onChanged: (value) =>
                        setState(() => selectedValuedbpost = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValuedbpost,
                    onChanged: (value) =>
                        setState(() => selectedValuedbpost = 2),
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
              Text('dbout.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValuedbout,
                    onChanged: (value) =>
                        setState(() => selectedValuedbout = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValuedbout,
                    onChanged: (value) =>
                        setState(() => selectedValuedbout = 2),
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
              Text('gispdam.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('Success'),
                    groupValue: selectedValuegis,
                    onChanged: (value) => setState(() => selectedValuegis = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Failed'),
                    groupValue: selectedValuegis,
                    onChanged: (value) => setState(() => selectedValuegis = 2),
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
