
import 'package:flutter/material.dart';
import 'package:test3/share_pref.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var token ;
  var myInt ;
  var myBool;
  var myDouble;
  var myListString;

  @override
  void initState() {
    token = Prefs.getStringToken();
    myInt = Prefs.getInt();
    myBool = Prefs.getBool();
    myDouble = Prefs.getDouble();
    myListString = Prefs.getStringList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    // dynamic strList = myListString;

    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // string
            RaisedButton(
                child: Text("save String token"),
                onPressed: (){
                  setState(() {
                    Prefs.setStringToken("myNewToken");
                    token = Prefs.getStringToken();
                  });
                }),
            SizedBox(height:2,),
            RaisedButton(
                child: Text("save string null token"),
                onPressed: (){
                  setState(() {
                    Prefs.setStringToken("null");
                    token = Prefs.getStringToken();
                  });
                }),
            SizedBox(height:2,),
            Text(token == null ? "null" : token),
            SizedBox(height:20,),


            // int
            RaisedButton(
                child: Text("save int 1"),
                onPressed: (){
                  setState(() {
                    Prefs.setInt(1);
                    myInt = Prefs.getInt();
                  });
                }),
            SizedBox(height:2,),
            RaisedButton(
                child: Text("save int 2"),
                onPressed: (){
                  setState(() {
                    Prefs.setInt(2);
                    myInt = Prefs.getInt();
                  });
                }),
            SizedBox(height:2,),
            Text(myInt == null ? 0.toString() : myInt.toString()),
            SizedBox(height:20,),


            // bool
            RaisedButton(
                child: Text("save boolean true"),
                onPressed: (){
                  setState(() {
                    Prefs.setBool(true);
                    myBool = Prefs.getBool();
                  });
                }),
            SizedBox(height:2,),
            RaisedButton(
                child: Text("save boolean false"),
                onPressed: (){
                  setState(() {
                    Prefs.setBool(false);
                    myBool = Prefs.getBool();
                  });
                }),
            SizedBox(height:2,),
            Text(myBool ? "true" : "false"),
            SizedBox(height:20,),


            // double
            RaisedButton(
                child: Text("save double 1.1"),
                onPressed: (){
                  setState(() {
                    Prefs.setDouble(1.1);
                    myDouble = Prefs.getDouble();
                  });
                }),
            SizedBox(height:2,),
            RaisedButton(
                child: Text("save double 2.2"),
                onPressed: (){
                  setState(() {
                    Prefs.setDouble(2.2);
                    myDouble = Prefs.getDouble();
                  });
                }),
            SizedBox(height:2,),
            Text(myDouble.toString()),
            SizedBox(height:20,),

            
            // listString
            RaisedButton(
                child: Text("save List"),
                onPressed: (){
                  setState(() {
                    myListString.add("ali");
                    myListString.add("reza");
                    Prefs.setStringList(myListString);
                    int a  = 5;
                  });
                }),
            SizedBox(height:2,),
            RaisedButton(
                child: Text("empty list"),
                onPressed: (){
                  setState(() {
                    myListString = [];
                    Prefs.setStringList(myListString);
                    int a  = 5;
                  });
                }),
            SizedBox(height:2,),
            Text(myListString.length ==0 ? "empty list": myListString[0] +" / " +myListString[1] ),
            SizedBox(height:20,),

          ],
        ),
      )
    );
  }
}
