import 'package:budding/type_selection.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

String? stringResponse;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("uri"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: TypeSelection(),
    );
  }
}
