import 'package:calm_app/calmclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calm_app/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calm_app/videopg.dart';

class welcomepg extends StatefulWidget {
  @override
  _welcomepgState createState() => _welcomepgState();
}

class _welcomepgState extends State<welcomepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesomeIcons.bars),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.yinYang),
                        Text(
                          'Calm',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/Images/face3.jpg'),
                      //radius: 20,
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    Text(
                      'Welcome Back ',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      'Juhi!',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'How are you feeling today? ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 25),
                Container(
                  //decoration: BoxDecoration(color: Colors.pink),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            FontAwesomeIcons.yinYang,
                            color: Colors.white,
                          )),
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(FontAwesomeIcons.moon)),
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(CupertinoIcons.smiley)),
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(FontAwesomeIcons.music)),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Calm',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sleep',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Anxious',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Music',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Stack(
                  children: [
                    Container(
                      height: 170,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Ready to Start',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Your First Session?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Meditation to calm anger!',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle_fill,
                                      size: 35,
                                    ),
                                    Text(
                                      ' 20 Minutes',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20.0, top: 15, right: 15),
                            child: Image.asset(
                              'Assets/Images/yoga1.jpg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Meditation',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        child: Row(
                            children: [
                            Text(
                          'View All',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                            Icon(
                          FontAwesomeIcons.chevronCircleRight,
                          size: 18,
                          color: Colors.grey[350],
                        ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: calmlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => videopg(calmlist[index])));
                          },
                          child: Container(
                            height: 500,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Image.network(
                                  calmlist[index].image,
                                  height: 78,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  calmlist[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      calmlist[index].sessions,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '  Sessions',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Icon(
                                      Icons.play_circle_fill_outlined,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
