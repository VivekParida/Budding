import 'package:budding/Add%20New%20Plant/add_card.dart';
import 'package:flutter/material.dart';

class PlantSelection extends StatefulWidget {
  const PlantSelection({super.key});

  @override
  State<PlantSelection> createState() => _PlantSelectionState();
}

class _PlantSelectionState extends State<PlantSelection> {
  late final TextEditingController titleEditingController;
  late final TextEditingController typeEditingController;
  late final TextEditingController numberEditingController;
  // get _titleTextEditingController => _titleTextEditingController;

  // get _numberTextEditingController => _numberTextEditingController;

  // get _typeTextEditingController => _typeTextEditingController;

  @override
  Widget build(BuildContext context) {
    return AddCard(
        titleEditingController: titleEditingController,
        numberEditingController: numberEditingController,
        typeEditingController: typeEditingController);
  }
}
