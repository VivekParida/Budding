import 'package:flutter/material.dart';

import '../HomeHeader.dart';

class StakeholderHomePage extends StatefulWidget {
  const StakeholderHomePage({super.key});

  @override
  State<StakeholderHomePage> createState() => _StakeholderHomePageState();
}

class _StakeholderHomePageState extends State<StakeholderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              HomeHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
