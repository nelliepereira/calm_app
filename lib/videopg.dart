import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calm_app/calmclass.dart';
import 'package:calm_app/welcomepg.dart';

class videopg extends StatefulWidget {
  final calmclass obj;
  const videopg(this.obj);
  @override
  _videopgState createState() => _videopgState();
}

class _videopgState extends State<videopg> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (_) => welcomepg( )));
                      },
                      icon: Icon(Icons.chevron_left, color: Colors.white,)),
                  Icon(Icons.search, color: Colors.white),
                ],
              ),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle,
                        border: Border.all(width: 3),),
                    child:CircleAvatar(
                       backgroundImage: NetworkImage(widget.obj.image),
                      radius: 100,) ,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(widget.obj.title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By:',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Text(
                        widget.obj.author,
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.loop,
                        color: Colors.grey,
                        size: 25,
                      ),
                      Icon(
                        Icons.fast_rewind,
                        color: Colors.grey,
                        size: 25,
                      ),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.black,
                        size: 35,
                      ),
                      Icon(
                        Icons.fast_forward,
                        color: Colors.grey,
                        size: 25,
                      ),
                      Icon(
                        FontAwesomeIcons.random,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.obj.starttime,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Container(
                       // color: Colors.yellow,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.waveform, color: Colors.grey),
                            Icon(CupertinoIcons.waveform, color: Colors.grey),
                            Icon(CupertinoIcons.waveform, color: Colors.grey),
                            Icon(CupertinoIcons.waveform, color: Colors.black),
                            Icon(CupertinoIcons.waveform, color: Colors.black),
                            Icon(CupertinoIcons.waveform, color: Colors.black),
                          ],
                        ),
                      ),
                      Text(widget.obj.endtime,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  CupertinoIcons.heart_solid,
                  color: Colors.white,
                ),
                Icon(
                  CupertinoIcons.music_note_list,
                  color: Colors.grey,
                ),
                Icon(
                  CupertinoIcons.music_note_2,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
