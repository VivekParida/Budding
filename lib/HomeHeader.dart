import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 98,
      //color: Colors.amber,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black54,
            size: 32,
          ),
          Spacer(),
          Text(
            "Budding",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
