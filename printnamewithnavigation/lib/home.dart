import 'package:flutter/material.dart';
import 'package:printnamewithnavigation/constants.dart';
import 'package:printnamewithnavigation/second.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Container(
          color: const Color(0xFFE6E6FA),
          alignment: Alignment.center,
          width: 350,
          height: 350,

          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: const Text("Welcome, ", style: TextStyle(fontSize: 32),)),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: Second.vn,
                  builder: (context, value, child){
                    return Text(value==null?"Guest!":(value==""?"Guest!":"$value!"), style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),);
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed('/firstpage');
        },
        tooltip: 'Add your name',
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
