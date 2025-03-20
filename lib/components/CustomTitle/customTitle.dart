import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(color: Colors.blueGrey, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(
          "1 USD",
          style: TextStyle(fontSize: 40, color: Colors.white))
      ),
    );
  }
}
