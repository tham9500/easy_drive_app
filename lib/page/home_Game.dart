import 'package:flutter/material.dart';
import '../page/game_page/example_Eye.dart';

class home_Game extends StatefulWidget {
  home_Game({Key? key}) : super(key: key);

  @override
  _home_Game createState() => _home_Game();
}

class _home_Game extends State<home_Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              btn_gameEye(),
            ],
          ),
        ),
      ),
    );
  }

  Widget btn_gameEye() {
    return Container(
      color: Colors.lightBlue.shade600,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => exampleEye()));
        },
        child: Text(
          "Example length eye",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}
