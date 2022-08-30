import 'package:flutter/material.dart';

class keteranganbackupMenu extends StatelessWidget {
  const keteranganbackupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check List Backup System',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keterangan'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.all(20),
                child: TextField(
                  expands: true,
                  maxLines: null,
                ),
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
      ),
    );
  }
}
