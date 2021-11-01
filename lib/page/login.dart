import 'package:easy_drive_app/page/home_Game.dart';
import 'package:easy_drive_app/page/registor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class login_page extends StatefulWidget {
  login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController username =
      TextEditingController(); //detech valiable username controller
  TextEditingController password =
      TextEditingController(); //detech valiable username controller
  bool hide_pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "My application",
                  style: TextStyle(fontSize: 18),
                ),
                cum_swallow(),
                cum_swallow2(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    btn_registor(),
                    SizedBox(width: 20),
                    btn_submit(),
                  ],
                ),
                SizedBox(height: 20),
                btn_gamePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //function

  Widget cum_swallow() {
    return FormBuilderTextField(
      controller: username,
      name: 'username',
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Username',
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget cum_swallow2() {
    return FormBuilderTextField(
      controller: password,
      name: 'password',
      keyboardType: TextInputType.emailAddress,
      obscureText: hide_pass,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: Icon(Icons.vpn_key),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
          ),
          onPressed: () {
            setState(() {
              hide_pass = !hide_pass;
            });
          },
        ),
      ),
    );
  }

  Widget btn_submit() {
    return Container(
      color: Colors.blueAccent.shade700,
      child: MaterialButton(
        onPressed: () {
          print("username : ${username.text}");
          print("password : ${password.text}");
          print("password : ${password.text}");
        },
        child: Text(
          "Login",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }

  Widget btn_registor() {
    return Container(
      color: Colors.amber.shade300,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => registor_page()));
        },
        child: Text(
          "Registor",
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
    );
  }

  Widget btn_gamePage() {
    return Container(
      color: Colors.red.shade300,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home_Game()));
        },
        child: Text(
          "game page",
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
    );
  }
}
