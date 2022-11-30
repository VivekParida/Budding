import 'package:budding/Civilian%20Home%20Page/Civilian_home_page.dart';
import 'package:budding/Stakeholder%20Home%20Page/stakeholder_home_page.dart';
import 'package:flutter/material.dart';

class TypeSelection extends StatelessWidget {
  const TypeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CivilianHomePage())));
              },
              child: Container(
                alignment: Alignment.center,
                height: 196,
                width: 382,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color.fromRGBO(0, 106, 80, 1)),
                ),
                child: Text("Civilian",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 106, 80, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => StakeholderHomePage())));
              },
              child: Container(
                alignment: Alignment.center,
                height: 196,
                width: 382,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color.fromRGBO(16, 74, 101, 1),
                  ),
                ),
                child: Text(
                  "Stakeholders",
                  style: TextStyle(
                      color: Color.fromRGBO(16, 74, 101, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
