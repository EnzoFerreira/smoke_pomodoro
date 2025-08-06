import 'package:flutter/material.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';

class SmokeRoller extends StatefulWidget {
  const SmokeRoller({super.key});

  @override
  State<SmokeRoller> createState() {
    return _SmokeRollerState();
  }
}

//_name the _ make the class private and invisible
class _SmokeRollerState extends State<SmokeRoller> {
  var smokeImage = 'assets/imgs/Weapon_smokegrenade.png';

  final AudioPlayer audioplayer = AudioPlayer();
  final String smokeSound = 'assets/audio/smoke.mp3';

  void throwSmoke() async {
      await audioplayer.play(AssetSource('audio/smoke.mp3'));
      //funny fact, o assetSource coloca sem avisar um /assets/, duplicando o path lol
      for (int i = 0; i < 8; i++) {
        // Espera 500ms antes de trocar a imagem
        await Future.delayed(Duration(milliseconds: 500));

        setState(() {
          smokeImage = (i % 2 == 0)
          //aqui ele pega o numero da imagem, o resultado da divisao vê se ela é true or false hmm
              ? 'assets/imgs/Weapon_smokegrenade.png'
              : 'assets/imgs/Weapon_smokegrenade2.png';
        });
      }
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(smokeImage, width: 300),
        SizedBox(height: 20),
        TextButton(
          onPressed: throwSmoke,
          style: TextButton.styleFrom(
            //padding: EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text('When the smoke stop spinning \n'
              '                       RUSH')
          ,
        ),
      ],
    );
  }
}
