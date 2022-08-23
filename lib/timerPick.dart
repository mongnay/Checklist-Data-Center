import 'package:checklist/package.flutter/aspek.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calenderPick.dart';

class timepick extends StatefulWidget {
  timepick({Key? key}) : super(key: key);
  @override
  State<timepick> createState() => _statetimerPick();
}

class _statetimerPick extends State<timepick> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    final dates = date.day.toString();
    final month = date.month.toString();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$hours:$minutes',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text('Select Time'),
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                );

                if (newTime == null) return;

                setState(() => time = newTime);
              },
            ),
            const SizedBox(height: 16),
            Text(
              '${_dateTime.year}/${_dateTime.month}/${_dateTime.day}',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text('Select Date'),
              onPressed: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Calender()),
                // );
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: _dateTime,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));
                if (newDate == null) return;
                setState(() => _dateTime = newDate);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => aspekMenu()));
              },
            )
          ],
        ),
      ),
    );
  }
}
