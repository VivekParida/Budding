import 'package:budding/Plants%20and%20UnderTreatment/plants_selection.dart';
import 'package:budding/Plants%20and%20UnderTreatment/under_treatment.dart';
import 'package:flutter/material.dart';

class PlantandUndertreatment extends StatefulWidget {
  const PlantandUndertreatment({super.key});

  @override
  State<PlantandUndertreatment> createState() => _PlantandUndertreatmentState();
}

class _PlantandUndertreatmentState extends State<PlantandUndertreatment> {
  @override
  Widget build(BuildContext context) {
    TabController _tabController;

    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white10,
            elevation: 0,
            flexibleSpace: Column(
              children: [
                Expanded(
                  child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 114, 212, 188)),
                      tabs: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Plants",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 106, 80, 1),
                                  fontSize: 16)),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Under Treatment",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 106, 80, 1),
                                  fontSize: 16)),
                        )
                      ]),
                )
              ],
            ),
          ),
          body: TabBarView(children: [PlantSelection(), UnderTreatment()]),
        ),
      ),
    );
  }
}
