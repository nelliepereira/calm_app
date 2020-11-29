import 'package:calm_app/welcomepg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class calmapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return calmapp();
  }
}

class calmapp extends StatefulWidget {
  @override
  _calmappState createState() => _calmappState();
}

class _calmappState extends State<calmapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 55,
              height: 25,
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.yinYang),
                Text(' Calm', style: TextStyle(fontSize: 23)),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Take a Deep Breath,',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              children: [
                Text(
                  'Keep ',
                  style: TextStyle(fontSize: 50, fontFamily: 'Ubuntu'),
                ),
                Text(
                  ' Calm ',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' and ',
                  style: TextStyle(fontSize: 50, fontFamily: 'Ubuntu'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Start ',
                  style: TextStyle(fontSize: 50, fontFamily: 'Ubuntu'),
                ),
                Text(
                  ' Meditation! ',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.lightGreenAccent),
              height: 300, width: 450,
              child: Stack(
                children: [
                  Center(
                      child: Image.network('https://image.shutterstock.com/image-illustration/woman-clouds-260nw-638892973.jpg',
                      //Image.asset('Assets/Images/sadgirl.jpg',
                    height: 250,
                    width: 250,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 235.0, left: 43),
                    child: Image.asset('Assets/Images/sleeping_dog_2.jpg',
                      height: 75,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey[350],
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey[350],
                      ),
                      Icon(Icons.circle, size: 8),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => welcomepg()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Start',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
