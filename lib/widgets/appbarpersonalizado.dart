import 'package:flutter/material.dart';

Widget AppBarPersonalizado(@required IconData icone , @required String texto){
  return Container(
    height: 80,
    width: .maxFinite,
    color: Color(0xFF121212),
    child: Row(
      children: [
        SizedBox(width: 24,),
        Container(
          width: 42,
          height: 42,
          child:  Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: .circular(1000),
            color: Colors.black
          ),
        ),
        SizedBox(width: 24,),
        Text('${texto}' , style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Avenir',
          fontWeight: .bold,
        ),)
      ],
    ),
  );
}