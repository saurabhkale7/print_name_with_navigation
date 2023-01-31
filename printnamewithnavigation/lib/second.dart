import 'package:flutter/material.dart';
import 'package:printnamewithnavigation/constants.dart';

class Second extends StatelessWidget {
  static ValueNotifier<String?> vn=ValueNotifier(null);
  String? name;

  Second({Key? key, this.name}) : super(key: key);

  //Second(required this.name){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirmation Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.deepPurple,),
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
              Expanded(child: Text("Are you sure you want to continue?", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text("No", style: TextStyle(fontSize: 22),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: (){
                      vn.value=name;
                      print("vn.value = ${vn.value}");
                      print("name = $name");
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                      //Navigator.popUntil(context, ModalRoute.withName(Constants.firstPage));
                      //Navigator.of(context).popUntil(ModalRoute.withName(Constants.firstPage));
                    },
                    child: Text("Yes", style: TextStyle(fontSize: 22),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.transparent),
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ) ,
    );
  }
}

/*
Center(
        child: Column(
          children: [
            Text("Are you sure to continue?",),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("No"),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
            TextButton(
              onPressed: (){
                vn.value=name;
                print("vn.value = ${vn.value}");
                print("name = $name");
                Navigator.popUntil(context, ModalRoute.withName('/'));
                //Navigator.popUntil(context, ModalRoute.withName(Constants.firstPage));
                //Navigator.of(context).popUntil(ModalRoute.withName(Constants.firstPage));
              },
              child: Text("Yes"),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),

          ],
        ),
      )
 */