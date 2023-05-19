import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.login,
                size: 100,
              ),

              SizedBox(
                height: 50,
              ),
              //logo

              //Selamat Datang di Aplikasi kami

              // username

              //password

              //forgot password

              //button

              //continue with google

              //register now
            ],
          ),
        ),
      ),
    );
  }
}
