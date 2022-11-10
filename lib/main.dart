import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halimat Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage()
      );

  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _typedText = "Start typing to see...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halimat Flutter App"),

        ),
        body: ListView(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  _typedText,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Type here",
                  border: OutlineInputBorder()
                ),
                onChanged: (String value){
                  setState(() => _typedText = value );
                },
                maxLines: null,
              ),

            )
          ],
        )
    );
  }
}

