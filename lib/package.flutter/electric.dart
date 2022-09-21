import 'package:checklist/package.flutter/aspek.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class electricmenu extends StatefulWidget {
  @override
  electricmenustate createState() => electricmenustate();
}

class electricmenustate extends State<electricmenu> {
  String _groupValueUPS = '';
  String _groupValueGenset = '';
  String _groupValuePLN = '';

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
            onPressed: () {
              final status_ups = _groupValueUPS;
              final status_genset = _groupValueGenset;
              final status_pln = _groupValuePLN;

              createElectric(
                  status_ups: status_ups,
                  status_genset: status_genset,
                  status_pln: status_pln);

              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => aspekMenu()));
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

  void createElectric(
      {required String status_ups, status_genset, status_pln}) async {
    final docElectric = FirebaseFirestore.instance.collection('electric').doc();

    final elec = Elec(
      status_ups: status_ups,
      status_genset: status_genset,
      status_pln: status_pln,
      date: DateTime.now(),
    );
    final json = elec.toJson();

    await docElectric.set(json);
  }
}

class Elec {
  final String status_ups;
  final String status_genset;
  final String status_pln;
  final DateTime date;

  Elec({
    required this.status_ups,
    required this.status_genset,
    required this.status_pln,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'status_ups': status_ups,
        'status_genset': status_genset,
        'status_pln': status_pln,
        'date': date,
      };
}
