import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package.flutter/aspek.dart';

class temperMenu extends StatelessWidget {
  final suhuRNI = TextEditingController();
  final humidityRNI = TextEditingController();
  final suhuRA = TextEditingController();
  final humidityRA = TextEditingController();
  final suhuRF = TextEditingController();
  final humidityRD = TextEditingController();

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
                      controller: suhuRNI,
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
                      controller: humidityRNI,
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
                      controller: suhuRA,
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
                      controller: humidityRA,
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
                      controller: suhuRF,
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
                      controller: humidityRD,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ))
              ]),
            ),
            MaterialButton(
              onPressed: () {
                if (int.parse(suhuRNI.text) >= 18 &&
                    int.parse(suhuRNI.text) <= 24) {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: Text("Review"),
                            content: Text("Suhu RNI Normal"),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                    if (int.parse(humidityRNI.text) >= 35 &&
                                        int.parse(humidityRNI.text) <= 55) {
                                      showDialog(
                                          context: context,
                                          builder: ((ctx1) => AlertDialog(
                                                title: Text("Review"),
                                                content: Text(
                                                    "Suhu Humidity RNI Normal"),
                                                actions: <Widget>[
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(ctx1)
                                                            .pop();
                                                        if (int.parse(suhuRA
                                                                    .text) >=
                                                                18 &&
                                                            int.parse(suhuRA
                                                                    .text) <=
                                                                24) {
                                                          showDialog(
                                                              context: context,
                                                              builder: ((ctx2) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx2).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: ((ctx3) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx3).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: ((ctx3) => AlertDialog(
                                                                                                            title: Text("Riview"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx3).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: ((ctx4) => AlertDialog(
                                                                                                                                title: Text("Riview"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx4).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              )));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          )));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      )));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 18 && int.parse(humidityRD.text) <= 24) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx2) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx2).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  )));
                                                        } else {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A  Tidak Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx1) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx1).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx2) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx2).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx3) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx3).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 18 && int.parse(humidityRD.text) <= 35) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                            showDialog(
                                                                                context: context,
                                                                                builder: (ctx) => AlertDialog(
                                                                                      title: Text("Review"),
                                                                                      content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                      actions: <Widget>[
                                                                                        TextButton(
                                                                                            onPressed: () {
                                                                                              Navigator.of(ctx).pop();
                                                                                              if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRA.text) <= 26) {
                                                                                                showDialog(
                                                                                                    context: context,
                                                                                                    builder: (ctx1) => AlertDialog(
                                                                                                          title: Text("Review"),
                                                                                                          content: Text("Suhu Rack F Normal"),
                                                                                                          actions: <Widget>[
                                                                                                            TextButton(
                                                                                                                onPressed: () {
                                                                                                                  Navigator.of(ctx1).pop();
                                                                                                                  if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                    showDialog(
                                                                                                                        context: context,
                                                                                                                        builder: (ctx2) => AlertDialog(
                                                                                                                              title: Text("Review"),
                                                                                                                              content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                              actions: <Widget>[
                                                                                                                                TextButton(
                                                                                                                                    onPressed: () {
                                                                                                                                      Navigator.of(ctx2).pop();
                                                                                                                                    },
                                                                                                                                    child: Container(
                                                                                                                                      color: Colors.white,
                                                                                                                                      padding: EdgeInsets.all(14),
                                                                                                                                      child: Text("Finish"),
                                                                                                                                    ))
                                                                                                                              ],
                                                                                                                            ));
                                                                                                                  } else {
                                                                                                                    showDialog(
                                                                                                                        context: context,
                                                                                                                        builder: (ctx) => AlertDialog(
                                                                                                                              title: Text("Review"),
                                                                                                                              content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                              actions: <Widget>[
                                                                                                                                TextButton(
                                                                                                                                    onPressed: () {
                                                                                                                                      Navigator.of(ctx).pop();
                                                                                                                                    },
                                                                                                                                    child: Container(
                                                                                                                                      color: Colors.white,
                                                                                                                                      padding: EdgeInsets.all(14),
                                                                                                                                      child: Text("Finish"),
                                                                                                                                    ))
                                                                                                                              ],
                                                                                                                            ));
                                                                                                                  }
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  color: Colors.white,
                                                                                                                  padding: EdgeInsets.all(14),
                                                                                                                  child: Text("Next"),
                                                                                                                ))
                                                                                                          ],
                                                                                                        ));
                                                                                              } else {
                                                                                                showDialog(
                                                                                                    context: context,
                                                                                                    builder: (ctx) => AlertDialog(
                                                                                                          title: Text("Review"),
                                                                                                          content: Text("Suhu Rack F Tidak Normal"),
                                                                                                          actions: <Widget>[
                                                                                                            TextButton(
                                                                                                                onPressed: () {
                                                                                                                  Navigator.of(ctx).pop();
                                                                                                                  if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                    showDialog(
                                                                                                                        context: context,
                                                                                                                        builder: (ctx) => AlertDialog(
                                                                                                                              title: Text("Review"),
                                                                                                                              content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                              actions: <Widget>[
                                                                                                                                TextButton(
                                                                                                                                    onPressed: () {
                                                                                                                                      Navigator.of(ctx).pop();
                                                                                                                                    },
                                                                                                                                    child: Container(
                                                                                                                                      color: Colors.white,
                                                                                                                                      padding: EdgeInsets.all(14),
                                                                                                                                      child: Text("Finish"),
                                                                                                                                    ))
                                                                                                                              ],
                                                                                                                            ));
                                                                                                                  } else {
                                                                                                                    showDialog(
                                                                                                                        context: context,
                                                                                                                        builder: (ctx) => AlertDialog(
                                                                                                                              title: Text("Review"),
                                                                                                                              content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                              actions: <Widget>[
                                                                                                                                TextButton(
                                                                                                                                    onPressed: () {
                                                                                                                                      Navigator.of(ctx).pop();
                                                                                                                                    },
                                                                                                                                    child: Container(
                                                                                                                                      color: Colors.white,
                                                                                                                                      padding: EdgeInsets.all(14),
                                                                                                                                      child: Text("Finish"),
                                                                                                                                    ))
                                                                                                                              ],
                                                                                                                            ));
                                                                                                                  }
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  color: Colors.white,
                                                                                                                  padding: EdgeInsets.all(14),
                                                                                                                  child: Text("Next"),
                                                                                                                ))
                                                                                                          ],
                                                                                                        ));
                                                                                              }
                                                                                            },
                                                                                            child: Container(
                                                                                              color: Colors.white,
                                                                                              padding: EdgeInsets.all(14),
                                                                                              child: Text("Next"),
                                                                                            ))
                                                                                      ],
                                                                                    ));
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        }
                                                      },
                                                      child: Container(
                                                        color: Colors.white,
                                                        padding:
                                                            EdgeInsets.all(14),
                                                        child: Text("Next"),
                                                      ))
                                                ],
                                              )));
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                                title: Text("Review"),
                                                content: Text(
                                                    "Suhu Humidity RNI Tidak Normal"),
                                                actions: <Widget>[
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(ctx).pop();
                                                        if (int.parse(suhuRA
                                                                    .text) >=
                                                                18 &&
                                                            int.parse(suhuRA
                                                                    .text) <=
                                                                24) {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx1) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx1).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx2) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx2).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx3) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx3).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx4) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx4).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 18 && int.parse(humidityRD.text) <= 35) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx2) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx2).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        } else {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Tidak Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx1) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx1).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx2) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Humidity Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx2).pop();
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        }
                                                      },
                                                      child: Container(
                                                        color: Colors.white,
                                                        padding:
                                                            EdgeInsets.all(14),
                                                        child: Text("Next"),
                                                      ))
                                                ],
                                              ));
                                    }
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(14),
                                    child: Text("Next"),
                                  ))
                            ],
                          ));
                } else {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: Text("Review"),
                            content: Text("Suhu RNI Tidak Normal"),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                    if (int.parse(humidityRNI.text) >= 35 &&
                                        int.parse(humidityRNI.text) <= 55) {
                                      showDialog(
                                          context: context,
                                          builder: (ctx1) => AlertDialog(
                                                title: Text("Review"),
                                                content: Text(
                                                    "Suhu Humidity Rack RNI Normal"),
                                                actions: <Widget>[
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(ctx1)
                                                            .pop();
                                                        if (int.parse(suhuRA
                                                                    .text) >=
                                                                18 &&
                                                            int.parse(suhuRA
                                                                    .text) <=
                                                                24) {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx2) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx2).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx3) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx3).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx4) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx4).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx5) => AlertDialog(
                                                                                                                                title: Text("Riview"),
                                                                                                                                content: Text("Suhu Hunidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx5).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(suhuRA.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRA.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx2) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx2).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        } else {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Tidak Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx).pop();
                                                                            if (int.parse(humidityRA.text) >= 18 &&
                                                                                int.parse(humidityRA.text) <= 24) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx2) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx2).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 35) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        }
                                                      },
                                                      child: Container(
                                                        color: Colors.white,
                                                        padding:
                                                            EdgeInsets.all(14),
                                                        child: Text("Next"),
                                                      ))
                                                ],
                                              ));
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                                title: Text("Review"),
                                                content: Text(
                                                    "Suhu Humidity RNI Tidak Normal"),
                                                actions: <Widget>[
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(ctx).pop();
                                                        if (int.parse(suhuRA
                                                                    .text) >=
                                                                18 &&
                                                            int.parse(suhuRA
                                                                    .text) <=
                                                                24) {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx1) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx1).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx2) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx2).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx3) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx3).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx4) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx4).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Next"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 35) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRA.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        } else {
                                                          showDialog(
                                                              context: context,
                                                              builder: (ctx) =>
                                                                  AlertDialog(
                                                                    title: Text(
                                                                        "Review"),
                                                                    content: Text(
                                                                        "Suhu Rack A Tidak Normal"),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(ctx).pop();
                                                                            if (int.parse(humidityRA.text) >= 35 &&
                                                                                int.parse(humidityRA.text) <= 55) {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx1) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx1).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRF.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx2) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx2).pop();
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            } else {
                                                                              showDialog(
                                                                                  context: context,
                                                                                  builder: (ctx) => AlertDialog(
                                                                                        title: Text("Review"),
                                                                                        content: Text("Suhu Humidity Rack A Tidak Normal"),
                                                                                        actions: <Widget>[
                                                                                          TextButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(ctx).pop();
                                                                                                if (int.parse(suhuRF.text) >= 16 && int.parse(suhuRA.text) <= 24) {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx1) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx1).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx2) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx2).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    } else {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                } else {
                                                                                                  showDialog(
                                                                                                      context: context,
                                                                                                      builder: (ctx) => AlertDialog(
                                                                                                            title: Text("Review"),
                                                                                                            content: Text("Suhu Rack F Tidak Normal"),
                                                                                                            actions: <Widget>[
                                                                                                              TextButton(
                                                                                                                  onPressed: () {
                                                                                                                    Navigator.of(ctx).pop();
                                                                                                                    if (int.parse(humidityRD.text) >= 35 && int.parse(humidityRD.text) <= 55) {
                                                                                                                      showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (ctx1) => AlertDialog(
                                                                                                                                title: Text("Review"),
                                                                                                                                content: Text("Suhu Humidity Rack F Normal"),
                                                                                                                                actions: <Widget>[
                                                                                                                                  TextButton(
                                                                                                                                      onPressed: () {
                                                                                                                                        Navigator.of(ctx1).pop();
                                                                                                                                      },
                                                                                                                                      child: Container(
                                                                                                                                        color: Colors.white,
                                                                                                                                        padding: EdgeInsets.all(14),
                                                                                                                                        child: Text("Finish"),
                                                                                                                                      ))
                                                                                                                                ],
                                                                                                                              ));
                                                                                                                    }
                                                                                                                    showDialog(
                                                                                                                        context: context,
                                                                                                                        builder: (ctx) => AlertDialog(
                                                                                                                              title: Text("Review"),
                                                                                                                              content: Text("Suhu Humidity Rack F Tidak Normal"),
                                                                                                                              actions: <Widget>[
                                                                                                                                TextButton(
                                                                                                                                    onPressed: () {
                                                                                                                                      Navigator.of(ctx).pop();
                                                                                                                                    },
                                                                                                                                    child: Container(
                                                                                                                                      color: Colors.white,
                                                                                                                                      padding: EdgeInsets.all(14),
                                                                                                                                      child: Text("Finish"),
                                                                                                                                    ))
                                                                                                                              ],
                                                                                                                            ));
                                                                                                                  },
                                                                                                                  child: Container(
                                                                                                                    color: Colors.white,
                                                                                                                    padding: EdgeInsets.all(14),
                                                                                                                    child: Text("Next"),
                                                                                                                  ))
                                                                                                            ],
                                                                                                          ));
                                                                                                }
                                                                                              },
                                                                                              child: Container(
                                                                                                color: Colors.white,
                                                                                                padding: EdgeInsets.all(14),
                                                                                                child: Text("Next"),
                                                                                              ))
                                                                                        ],
                                                                                      ));
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.white,
                                                                            padding:
                                                                                EdgeInsets.all(14),
                                                                            child:
                                                                                Text("Next"),
                                                                          ))
                                                                    ],
                                                                  ));
                                                        }
                                                      },
                                                      child: Container(
                                                        color: Colors.white,
                                                        padding:
                                                            EdgeInsets.all(14),
                                                        child: Text("Next"),
                                                      ))
                                                ],
                                              ));
                                    }
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(14),
                                    child: Text("Next"),
                                  ))
                            ],
                          ));
                }

                final suhu_rack_network_internal = suhuRNI.text;
                final humidity_rack_network_internal = humidityRNI.text;
                final suhu_rack_a = suhuRA.text;
                final humidity_rack_a = humidityRA.text;
                final suhu_rack_f = suhuRF.text;
                final humidity_rack_f = humidityRD.text;

                createTemperature(
                    suhu_rack_network_internal: suhu_rack_network_internal,
                    humidity_rack_network_internal:
                        humidity_rack_network_internal,
                    suhu_rack_a: suhu_rack_a,
                    humidity_rack_a: humidity_rack_a,
                    suhu_rack_f: suhu_rack_f,
                    humidity_rack_f: humidity_rack_f);

                //Navigator.push(context,
                //    MaterialPageRoute(builder: (context) => readTemper()));
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
          ],
        ),
      ),
    );
  }

  void createTemperature(
      {required String suhu_rack_network_internal,
      humidity_rack_network_internal,
      suhu_rack_a,
      humidity_rack_a,
      suhu_rack_f,
      humidity_rack_f}) async {
    final docTemperature =
        FirebaseFirestore.instance.collection('temperature').doc();

    final temp = Temp(
      suhu_rack_network_internal: suhu_rack_network_internal,
      humidity_rack_network_internal: humidity_rack_network_internal,
      suhu_rack_a: suhu_rack_a,
      humidity_rack_a: humidity_rack_a,
      suhu_rack_f: suhu_rack_f,
      humidity_rack_f: humidity_rack_f,
      date: DateTime.now(),
    );
    final json = temp.toJson();

    await docTemperature.set(json);
  }
}

class Temp {
  final String suhu_rack_network_internal;
  final String humidity_rack_network_internal;
  final String suhu_rack_a;
  final String humidity_rack_a;
  final String suhu_rack_f;
  final String humidity_rack_f;
  final DateTime date;

  Temp({
    required this.suhu_rack_network_internal,
    required this.humidity_rack_network_internal,
    required this.suhu_rack_a,
    required this.humidity_rack_a,
    required this.suhu_rack_f,
    required this.humidity_rack_f,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'suhu_rack_network_internal': suhu_rack_network_internal,
        'humidity_rack_network_internal': humidity_rack_network_internal,
        'suhu_rack_a': suhu_rack_a,
        'humidity_rack_a': humidity_rack_a,
        'suhu_rack_f': suhu_rack_f,
        'humidity_rack_f': humidity_rack_f,
        'date': date,
      };
}
