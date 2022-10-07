import 'package:flutter/material.dart';
import 'package:new_project/screens/info_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Setting Screen', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => InfoScreen()));
              },
              icon: Icon(Icons.info_outline_rounded))
        ],
      ),
      body: Center(
        child: Text('Setting Page'),
      ),
    );
  }
}
