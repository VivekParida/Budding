import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:budding/Add New Plant/add_new_plant.dart';

final List<String> _plants = <String>[];

void _addPlants(String title) {
  setState(() {
    _plants.add(title);
  });
}

void setState(Null Function() param0) {}

bool addWidget = false;
String? _plantName;
String? _plantType;
String? _numberOfPlants;

Widget createActivityCard(String activy, String activityDesc) {
  return SizedBox(
    height: 96,
    width: 183,
    child: Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Day 3",
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(179, 179, 179, 1)),
              ),
              SizedBox(
                height: 4,
              ),
              Text("data")
            ],
          ),
        ],
      ),
    ),
  );
}
