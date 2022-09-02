import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 80.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                        'CHAT'),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      color: Colors.grey.shade400,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 160.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  height: 80.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      DottedBorder(
                                        color: Colors.blue,
                                        strokeWidth: 1,
                                        borderType: BorderType.Circle,
                                        child: Center(
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.blue,
                                                  size: 40.0,
                                                ),
                                              )),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                height: 80,
                                child: Row(
                                  children: [
                                    Text(
                                      'ALL',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Text(
                                      'Family',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Text(
                                      'Buddies',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
