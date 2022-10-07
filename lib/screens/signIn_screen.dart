import 'package:flutter/material.dart';
import 'package:new_project/screens/home.dart';
import 'package:new_project/screens/login_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SIGN IN'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Let's connect !",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: Colors.teal),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      labelText: 'Enter your Name',
                      hintText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Enter Mobile number',
                      hintText: 'Mobile number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone)),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Enter Email',
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock)),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 30,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account ?",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        'Login Here !',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
