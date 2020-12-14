import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(

       title: "MyApp",
       theme: new ThemeData(
         primarySwatch: Colors.green,
       ),
       home: new Homepage()


     );
   }
 }
 class Homepage extends StatefulWidget {
   @override
   _HomepageState createState() => _HomepageState();
 }



 class _HomepageState extends State<Homepage> {
   String myText = "HELLO WORLD";

  void _changeText(){
    setState(() {
      if(myText.startsWith("H")) {
        myText = "WELCOME SANDY";
      }else{
        myText = "HELLO WORLD";
      }
    });
  }


   Widget _Bodywidget(){
     return Container(
       padding: const EdgeInsets.all(8.0),
       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             new Text(myText,style: new TextStyle(
               fontSize: 30.0,
             ),),
             new RaisedButton(
               child: new Text("Click", style: new TextStyle(
                 color: Colors.limeAccent,
                 fontSize: 20.0,

               ),),
               onPressed: _changeText,
               color: Colors.blueAccent,
             )
           ],
         ),
       ),

     );
   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: new AppBar(
         title: new Text("Home page"),

       ),
       body: _Bodywidget()
     );
   }
 }
 





