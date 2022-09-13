import 'package:flutter/material.dart';

//selectedValuerman
class rmanmenu extends StatefulWidget {
  @override
  rmanmenustate createState() => rmanmenustate();
}

class rmanmenustate extends State<rmanmenu> {
  String selectedValuerman = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RMAN'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: 1000,
            child: Row(children: [
              Text('pdamcdb.log'),
              Spacer(),
              Container(
                width: 200,
                child: Column(children: <Widget>[
                  RadioListTile(
                    value: "Success",
                    title: Text('Success'),
                    groupValue: selectedValuerman,
                    onChanged: (value) =>
                        setState(() => selectedValuerman = "Success"),
                  ),
                  //Spacer(),
                  RadioListTile(
                    value: 'Failed',
                    title: Text('Failed'),
                    groupValue: selectedValuerman,
                    onChanged: (value) =>
                        setState(() => selectedValuerman = 'Failed'),
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
