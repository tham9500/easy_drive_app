// import 'dart:math';

import 'package:easy_drive_app/page/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class registor_page extends StatefulWidget {
  registor_page({Key? key}) : super(key: key);

  @override
  _registor_pageState createState() => _registor_pageState();
}

class _registor_pageState extends State<registor_page> {
  TextEditingController username =
      TextEditingController(); //detech valiable username controller
  TextEditingController email =
      TextEditingController(); //detech valiable username controller
  TextEditingController password =
      TextEditingController(); //detech valiable username controller
  TextEditingController confirm_password =
      TextEditingController(); //detech valiable username controller
  bool hide_pass = true;
  bool hide_conpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                Text(
                  "My registor page",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 40),
                user_name(),
                e_mail(),
                t_password(),
                con_password(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    btn_cancel(),
                    SizedBox(width: 20),
                    btn_registor(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget user_name() {
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

  Widget e_mail() {
    return FormBuilderTextField(
      controller: email,
      name: 'username',
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'email',
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  Widget t_password() {
    return FormBuilderTextField(
      controller: password,
      name: 'password',
      keyboardType: TextInputType.emailAddress,
      obscureText: hide_pass,
      decoration: InputDecoration(
        labelText: 'password',
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

  Widget con_password() {
    return FormBuilderTextField(
      controller: confirm_password,
      name: 'confirm_password',
      keyboardType: TextInputType.emailAddress,
      obscureText: hide_conpass,
      decoration: InputDecoration(
        labelText: 'Confirm password',
        prefixIcon: Icon(Icons.vpn_key_outlined),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
          ),
          onPressed: () {
            setState(() {
              hide_conpass = !hide_conpass;
            });
          },
        ),
      ),
    );
  }

  Widget btn_registor() {
    return Container(
      color: Colors.blue.shade700,
      child: MaterialButton(
        onPressed: () {
          print("Username : ${username.text}");
          print("Email : ${email.text}");
          print("Password : ${password.text}");
          print("Confirm Password : ${confirm_password.text}");
          print("Confirm Password : ${confirm_password.text}");
          print("Confirm Password : ${confirm_password.text}");
        },
        child: Text(
          "Registor",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }

  Widget btn_cancel() {
    return Container(
      color: Colors.amber.shade300,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => login_page()));
        },
        child: Text(
          "Cancel",
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
    );
  }
}
