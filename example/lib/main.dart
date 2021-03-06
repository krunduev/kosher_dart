import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:kosher_dart/hebrewcalendar/jewish_date.dart';
import 'package:kosher_dart/hebrewcalendar/hebrew_date_formatter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  HebrewDateFormatter hebrewDateFormatter = HebrewDateFormatter();
  JewishDate jewishDate = JewishDate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('תאריך עברי'),
        ),
        body: Center(
          child: Text(' תאריך לעוזי: ' + DateFormat("dd.MM.yyyy").format(jewishDate.getTime()) +
              '\nתאריך עברי: ' + hebrewDateFormatter.format(jewishDate)),
        ),
      ),
    );
  }

  @override
  void initState() {
    hebrewDateFormatter.setHebrewFormat(true);
    hebrewDateFormatter.setUseGershGershayim(true);

    super.initState();
  }
}
