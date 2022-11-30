import 'package:budding/Civilian%20Home%20Page/civilian_raised_flags.dart';
import 'package:budding/HomeHeader.dart';
import 'package:budding/Plants%20and%20UnderTreatment/plants_and_undertreatment.dart';
import 'package:budding/Add%20New%20Plant/add_new_plant.dart';
import 'package:flutter/material.dart';

class CivilianHomePage extends StatefulWidget {
  const CivilianHomePage({super.key});

  @override
  State<CivilianHomePage> createState() => _CivilianHomePageState();
}

class _CivilianHomePageState extends State<CivilianHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 48, left: 24, right: 24),
          child: Column(
            children: [
              HomeHeader(),
              RaisedFlag(),
              SizedBox(
                height: 24,
              ),
              PlantandUndertreatment()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => AddNewPlant())));
          },
          backgroundColor: Color.fromRGBO(0, 106, 80, 1),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
