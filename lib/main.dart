import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'constants.dart';

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
                      color: Colors.grey.shade200,
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
                                  margin: EdgeInsets.only(
                                    left: 10.0,
                                  ),
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
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/1.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/2.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/3.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/5.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/6.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/7.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/8.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
                                      Avater(
                                        imageProvider:
                                            AssetImage('images/9.jpg'),
                                        height: 55,
                                        width: 55,
                                      ),
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
                        Expanded(
                          child: Container(
                              child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              textTile(
                                lastSMS: 'hello',
                                ChatName: 'ngwa melissa',
                                imageNumber: 1,
                              ),
                              textTile(
                                lastSMS: 'good afternoon',
                                ChatName: 'martha',
                                imageNumber: 2,
                              ),
                              textTile(
                                lastSMS: 'good night',
                                ChatName: 'Beyounce',
                                imageNumber: 3,
                              ),
                              textTile(
                                lastSMS: 'how are you doing',
                                ChatName: 'Sandra',
                                imageNumber: 5,
                              ),
                              textTile(
                                lastSMS: 'i have being busy the whole day',
                                ChatName: 'Celine',
                                imageNumber: 6,
                              ),
                              textTile(
                                lastSMS: 'i am on my way',
                                ChatName: 'larissa',
                                imageNumber: 7,
                              ),
                              textTile(
                                lastSMS: 'i am home',
                                ChatName: 'Farida',
                                imageNumber: 8,
                              ),
                              textTile(
                                lastSMS: 'hey call me when u see this',
                                ChatName: 'linda',
                                imageNumber: 9,
                              ),
                              textTile(
                                lastSMS: 'i have being busy the whole day',
                                ChatName: 'Celine',
                                imageNumber: 6,
                              ),
                              textTile(
                                lastSMS: 'i am on my way',
                                ChatName: 'larissa',
                                imageNumber: 7,
                              ),
                              textTile(
                                lastSMS: 'i am home',
                                ChatName: 'Farida',
                                imageNumber: 8,
                              ),
                            ],
                          )),
                        )
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

class textTile extends StatelessWidget {
  textTile(
      {required this.ChatName,
      required this.imageNumber,
      required this.lastSMS});
  int imageNumber;
  String ChatName;
  String lastSMS;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Avater(
            imageProvider: AssetImage('images/$imageNumber.jpg'),
            height: 50,
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 14.0),
                child: Text(
                  ChatName,
                  style: kTitleStyle,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 4.0, left: 14.0),
                  child: Text(lastSMS, style: kTextStyle))
            ],
          )
        ],
      ),
    );
  }
}

class Avater extends StatelessWidget {
  Avater(
      {required this.imageProvider, required this.height, required this.width});
  ImageProvider imageProvider;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4.0),
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imageProvider,
          ),
        ));
  }
}
