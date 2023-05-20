import 'package:flutter/material.dart';
import 'package:login_page/component/button.dart';
import 'package:login_page/component/square_tile.dart';
import 'package:login_page/component/textfield.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  //controller textfield
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //signIn Method
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),

              //logo icon Lock
              Icon(
                Icons.lock,
                size: 100,
              ),

              //Selamat Datang di Aplikasi kami
              SizedBox(
                height: 50,
              ),
              Text(
                'Silahkan Masukan akun terlebih dahulu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // username
              MyTextField(
                controller: usernameController,
                hintText: ('Username'),
                obsecureText: false,
              ),
              SizedBox(
                height: 10,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: ('Password'),
                obsecureText: true,
              ),
              SizedBox(
                height: 20,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lupa Password ? ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //button
              MyButton(
                onTap: signIn,
              ),
              SizedBox(
                height: 50,
              ),

              //continue with google
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Atau lanjut dengan'),
                    ),
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //logo google
              squareTile(imagePath: 'icons/google.png'),
              SizedBox(
                height: 30,
              ),

              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun ?'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Daftar Sekarang',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
