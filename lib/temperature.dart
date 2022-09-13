import 'package:flutter/material.dart';

class temperMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KOMPONEN TEMPERATURE'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Text("Suhu Rack Network Internal"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      //style: TextStyle(color: Colors.redAccent),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack Network Internal"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Suhu Rack A"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack A"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Suhu Rack F"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            Container(
              child: Row(children: [
                Text("Humidity Rack F"),
                Spacer(),
                Container(
                    width: 55,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
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
          ],
        ),
      ),
    );
  }
}
