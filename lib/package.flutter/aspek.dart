import 'package:checklist/calenderPick.dart';
import 'package:checklist/package.flutter/electric.dart';
import 'package:checklist/package.flutter/jaringan.dart';
import 'package:checklist/package.flutter/keterangan.dart';
import 'package:checklist/temperature.dart';
import 'package:flutter/material.dart';

class aspekMenu extends StatelessWidget {
  const aspekMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3a57e8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Daily Checklist Data Center",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 70, 0, 0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 180, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => temperMenu()),
                  );
                },
                color: Color(0xff3531b9),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Temperature",
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 220, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => electricmenu()),
                  );
                },
                color: Color(0xff3821c7),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: Text(
                  "Electric",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xffffffff),
                height: 40,
                minWidth: 220,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 260, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => jaringanmenu()),
                  );
                },
                color: Color(0xff3531b9),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Jaringan",
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 300, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => keteranganMenu()),
                  );
                },
                color: Color(0xff3821c7),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: Text(
                  "Keterangan",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xffffffff),
                height: 40,
                minWidth: 220,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
