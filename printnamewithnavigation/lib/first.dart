import 'package:flutter/material.dart';
import 'package:printnamewithnavigation/constants.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController nameCtrl=TextEditingController(text: "",);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Name Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFE6E6FA),
            border: Border.all(color: Colors.transparent, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 250,
          height: 200,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: nameCtrl,
                  decoration: InputDecoration(hintText: "Enter your name", labelText: "Name"),
                  style: TextStyle(fontSize: 20, ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/secondpage', arguments: nameCtrl.text);
                  },
                  child: Text("Submit", style: TextStyle(fontSize: 20),),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.transparent),
                      ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
* Center(
        child: Column(
          children: [
            TextField(
              controller: nameCtrl,
              decoration: InputDecoration(hintText: "Enter your name", labelText: "Name"),
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/secondpage', arguments: nameCtrl.text);
              },
              child: Text("Submit"),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      )
* */