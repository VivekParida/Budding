import 'package:flutter/material.dart';

class RaisedFlag extends StatefulWidget {
  const RaisedFlag({super.key});

  @override
  State<RaisedFlag> createState() => _RaisedFlagState();
}

class _RaisedFlagState extends State<RaisedFlag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 144,
      width: 382,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color.fromRGBO(0, 106, 80, 0.36)),
      ),
      child: Text("Pending Raised Flag",
          style: TextStyle(
              color: Color.fromRGBO(0, 106, 80, 1),
              fontSize: 24,
              fontWeight: FontWeight.w400)),
    );
  }
}
