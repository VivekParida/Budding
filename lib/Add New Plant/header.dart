import 'package:flutter/material.dart';
import 'package:budding/Add%20New%20Plant/add_function_card.dart';

class NewPlantHeader extends StatelessWidget {
  const NewPlantHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      alignment: Alignment.centerLeft,
      height: 98,
      //color: Colors.amber,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              size: 32,
            ),
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
