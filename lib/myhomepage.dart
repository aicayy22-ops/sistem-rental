import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sistemrental")),
      backgroundColor: Color.fromARGB(255, 253, 193, 193),
      body:Column(
        children:[
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(255, 252, 252, 252),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukan Nama',
                  border: OutlineInputBorder(),
                ),
              controller: inputNama,
              onSubmitted: (values) {
                inputNama.text = values;
              },
              ),
            ),
            ),
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
            ),
        ],
      ),
    );
  }
}
