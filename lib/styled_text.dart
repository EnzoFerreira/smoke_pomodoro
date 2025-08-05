import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.textOutput,{super.key});

  final String textOutput;

  @override
  Widget build(context){
    return Text(
    textOutput,
    style: const TextStyle(
    fontSize: 28,
    color: Color.fromARGB(255, 255, 255, 255),
    ),
    );
  }
}