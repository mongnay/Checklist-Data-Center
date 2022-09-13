import 'package:flutter/material.dart';

class jaringanmenu extends StatefulWidget {
  @override
  jaringanmenustate createState() => jaringanmenustate();
}

class jaringanmenustate extends State<jaringanmenu> {
  String selectedValueNgagel = '';
  String selectedValueGudang = '';
  String selectedValueKarangPilang = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KOMPONEN JARINGAN'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text("Ngagel"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueNgagel,
                    onChanged: (value) =>
                        setState(() => selectedValueNgagel = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueNgagel,
                    onChanged: (value) =>
                        setState(() => selectedValueNgagel = 'Unavailable'),
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
              Text("Gudang"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueGudang,
                    onChanged: (value) =>
                        setState(() => selectedValueGudang = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueGudang,
                    onChanged: (value) =>
                        setState(() => selectedValueGudang = 'Unavailable'),
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
              Text("Karang Pilang"),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: 'Available',
                    title: Text('Available'),
                    groupValue: selectedValueKarangPilang,
                    onChanged: (value) =>
                        setState(() => selectedValueKarangPilang = 'Available'),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Unavailable',
                    title: Text('Unavailable'),
                    groupValue: selectedValueKarangPilang,
                    onChanged: (value) => setState(
                        () => selectedValueKarangPilang = 'Unavailable'),
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
