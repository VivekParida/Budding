import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  final TextEditingController titleEditingController;
  final TextEditingController typeEditingController;
  final TextEditingController numberEditingController;

  const AddCard(
      {super.key,
      required this.titleEditingController,
      required this.typeEditingController,
      required this.numberEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 183,
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text(
                  titleEditingController.toString(),
                  softWrap: false,
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  typeEditingController.toString(),
                  softWrap: false,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.map),
                ),
                Text(numberEditingController.toString())
              ],
            )
          ],
        ),
      ),
    );
  }
}
