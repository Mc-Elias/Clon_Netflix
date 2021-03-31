import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://i.pinimg.com/originals/13/b2/78/13b278af21ea982f6e410be6ccee79af.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,),
      ],
    ); 
  }
}