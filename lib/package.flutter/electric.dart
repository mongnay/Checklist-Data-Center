import 'package:flutter/material.dart';

class electricmenu extends StatefulWidget {
  @override
  electricmenustate createState() => electricmenustate();
}

class electricmenustate extends State<electricmenu> {
  //int _groupValue = 0;
  //int selectedValueGenset = 0;
  //int selectedValuePLN = 0;

  String _groupValueUPS = '';
  String _groupValueGenset = '';
  String _groupValuePLN = '';

  //void checkRadio(String value) {
  //   setState(() {
  //    _groupValueUPS = value;
  //    _groupValueGenset = value;
  //  });
  //}

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
                  RadioListTile(
                    value: 'On',
                    title: Text('On'),
                    groupValue: _groupValueUPS,
                    onChanged: (value) => setState(() => _groupValueUPS = 'On'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Off',
                    title: Text('Off'),
                    groupValue: _groupValueUPS,
                    onChanged: (value) =>
                        setState(() => _groupValueUPS = 'Off'),
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
              Text("Genset"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'On',
                    title: Text('On'),
                    groupValue: _groupValueGenset,
                    onChanged: (value) =>
                        setState(() => _groupValueGenset = 'On'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Off',
                    title: Text('Off'),
                    groupValue: _groupValueGenset,
                    onChanged: (value) =>
                        setState(() => _groupValueGenset = 'Off'),
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
              Text("PLN"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'On',
                    title: Text('On'),
                    groupValue: _groupValuePLN,
                    onChanged: (value) => setState(() => _groupValuePLN = 'On'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Off',
                    title: Text('Off'),
                    groupValue: _groupValuePLN,
                    onChanged: (value) =>
                        setState(() => _groupValuePLN = 'Off'),
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
