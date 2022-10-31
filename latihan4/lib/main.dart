
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    showToast (){
      setState(() {
        Fluttertoast.showToast(
          msg:'ERROR',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER
        );
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Latihan 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(onPressed: (){showToast();}, child: const Text("show Toast"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
