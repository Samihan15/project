import 'package:flutter/material.dart';
import 'package:new_project/screens/setting_screen.dart';
import 'package:new_project/utils/constants.dart';
// import 'package:new_project/widgets/image_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 10;
  var arr = [
    Constants().img1,
    Constants().img2,
    Constants().img3,
    Constants().img4,
    Constants().img5,
    Constants().img6,
    Constants().img7,
    Constants().img8,
    Constants().img9,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 11, 48),
      // appBar: AppBar(
      //   title: Text('ROYAL JAL'),
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color.fromARGB(255, 34, 12, 95),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 110,
                          child: Image.asset('assets/images/ph115.png'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'ORP -1234',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'FLOW',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2.1 L/MIN',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Tempreture',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '28 C',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'TIME',
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Total Liters',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '999999 L',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'FILTER LIFE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '888888 L',
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10:10 AM',
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Click Me',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.info_outline,
                        size: 35,
                        color: Colors.pink,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite,
                        size: 35,
                        color: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingScreen())),
                      child: Icon(
                        Icons.settings,
                        size: 35,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 25, 11, 48),
            height: MediaQuery.of(context).size.height * 0.65,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 0;
                              });
                            },
                            icon: count == 0
                                ? Image.asset(Constants().img1b)
                                : Image.asset(Constants().img1))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 1;
                              });
                            },
                            icon: count == 1
                                ? Image.asset(Constants().img2b)
                                : Image.asset(Constants().img2))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 2;
                              });
                            },
                            icon: count == 2
                                ? Image.asset(Constants().img3b)
                                : Image.asset(Constants().img3))),
                  ],
                ),
                // SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 3;
                              });
                            },
                            icon: count == 3
                                ? Image.asset(Constants().img4b)
                                : Image.asset(Constants().img4))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 4;
                              });
                            },
                            icon: count == 4
                                ? Image.asset(Constants().img5b)
                                : Image.asset(Constants().img5))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 5;
                              });
                            },
                            icon: count == 5
                                ? Image.asset(Constants().img6b)
                                : Image.asset(Constants().img6))),
                  ],
                ),
                // SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 6;
                              });
                            },
                            icon: count == 6
                                ? Image.asset(Constants().img7b)
                                : Image.asset(Constants().img7))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 7;
                              });
                            },
                            icon: count == 7
                                ? Image.asset(Constants().img8b)
                                : Image.asset(Constants().img8))),
                    Container(
                        width: 95,
                        child: IconButton(
                            iconSize: 95,
                            onPressed: () {
                              setState(() {
                                count = 8;
                              });
                            },
                            icon: count == 8
                                ? Image.asset(Constants().img9b)
                                : Image.asset(Constants().img9))),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
