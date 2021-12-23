import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "checkbox",
    home: Scaffold(
      appBar: AppBar(
        title: Text("cheakbox"),
      ),
      body: Myapp(),
    ),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
   bool? _cvalue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: CheckboxListTile(
          value: _cvalue,
          onChanged: (value) {
            print("value");
            setState(() {
              _cvalue = value;
            });
          },
          title: Text("title"),
          subtitle: Text("subtitle"),
          secondary: Container(
            height: 50,
            width: 50,
              
              child: Icon(Icons.ac_unit)),
              activeColor: Colors.amber,
              checkColor: Colors.black,
              //selected:_cvalue,
              controlAffinity: ListTileControlAffinity.leading,

              
          
        ),
      ),
    );
  }
}
