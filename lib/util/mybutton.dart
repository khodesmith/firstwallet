import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String logo;
  final color;
  final String buttonName;
  const MyButton(
      {super.key, required this.logo, this.color, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(logo),
          ),
        ),
        SizedBox(height: 10),
        Text(
          buttonName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
