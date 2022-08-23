import 'package:flutter/material.dart';

class electricmenu extends StatefulWidget {
  @override
  electricmenustate createState() => electricmenustate();
}

class electricmenustate extends State<electricmenu> {
  int selectedValueUPS = 0;
  int selectedValueGenset = 0;
  int selectedValuePLN = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KOMPONEN ELECTRIC'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text("UPS"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('On'),
                    groupValue: selectedValueUPS,
                    onChanged: (value) => setState(() => selectedValueUPS = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Off'),
                    groupValue: selectedValueUPS,
                    onChanged: (value) => setState(() => selectedValueUPS = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text("Genset"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('On'),
                    groupValue: selectedValueGenset,
                    onChanged: (value) =>
                        setState(() => selectedValueGenset = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Off'),
                    groupValue: selectedValueGenset,
                    onChanged: (value) =>
                        setState(() => selectedValueGenset = 2),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            width: 1000,
            child: Row(children: [
              Text("PLN"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile<int>(
                    value: 1,
                    title: Text('On'),
                    groupValue: selectedValuePLN,
                    onChanged: (value) => setState(() => selectedValuePLN = 1),
                  ),
                  //Spacer(),
                  RadioListTile<int>(
                    value: 2,
                    title: Text('Off'),
                    groupValue: selectedValuePLN,
                    onChanged: (value) => setState(() => selectedValuePLN = 2),
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
