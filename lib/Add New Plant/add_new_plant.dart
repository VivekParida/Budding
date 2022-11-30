import 'package:budding/Add%20New%20Plant/add_card.dart';
import 'package:budding/Add%20New%20Plant/header.dart';
import 'package:flutter/material.dart';

class AddNewPlant extends StatefulWidget {
  const AddNewPlant({super.key});

  @override
  State<AddNewPlant> createState() => _AddNewPlantState();
}

class _AddNewPlantState extends State<AddNewPlant> {
  final List<String> _plants = <String>[];
  final TextEditingController _titleTextEditingController =
      TextEditingController();

  final TextEditingController _typeTextEditingController =
      TextEditingController();

  final TextEditingController _numberTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            NewPlantHeader(),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 56,
              width: 366,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color.fromRGBO(0, 106, 80, 0.36),
                  )),
              child: TextField(
                controller: _titleTextEditingController,
                decoration: InputDecoration(
                    hintText: 'Enter the name of the Plant',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(184, 184, 184, 1),
                      fontSize: 18,
                      // fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 56,
                  width: 183,
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromRGBO(0, 106, 80, 0.36),
                      )),
                  child: TextField(
                    controller: _typeTextEditingController,
                    decoration: InputDecoration(
                        hintText: 'Type of Plant',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(184, 184, 184, 1),
                          fontSize: 18,
                          //  fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 56,
                  width: 183,
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromRGBO(0, 106, 80, 0.36),
                      )),
                  child: TextField(
                    controller: _numberTextEditingController,
                    decoration: InputDecoration(
                        hintText: 'Number of Plants',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(184, 184, 184, 1),
                          fontSize: 18,
                          //  fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
                height: 56,
                width: 382,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 106, 80, 1),
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(
                  //   color: Color.fromRGBO(0, 106, 80, 1),
                  // )
                ),
                //color: Color.fromRGBO(0, 106, 80, 1),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      AddCard(
                          titleEditingController: _titleTextEditingController,
                          numberEditingController: _numberTextEditingController,
                          typeEditingController: _typeTextEditingController);
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }

  void _addPlants(String title) {
    setState(() {
      _plants.add(title);
    });
  }
}
