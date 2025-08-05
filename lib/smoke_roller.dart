import 'package:flutter/material.dart';
import 'dart:io';

class SmokeRoller extends StatefulWidget{

  const SmokeRoller({super.key});

  @override
  State<SmokeRoller> createState() {
    return _SmokeRollerState();
  }
}

//_name the _ make the class private and invisible
class _SmokeRollerState extends State<SmokeRoller>{
  var smokeImage = 'assets/imgs/Weapon_smokegrenade.png';

  void throwSmoke() {
    setState(() {
      smokeImage = 'assets/imgs/Weapon_smokegrenade2.png';
      //FIX LATER AND ADD SOUND
      //sleep(Duration(seconds: 1));
      //smokeImage = 'assets/imgs/Weapon_smokegrenade.png';
    });
  }

  @override
  build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            smokeImage, width: 300),
        SizedBox(height: 20),
        TextButton(
          onPressed: throwSmoke,
          style: TextButton.styleFrom(
            //padding: EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text('Throw smoke'),
        ),
      ],
    );
  }
}