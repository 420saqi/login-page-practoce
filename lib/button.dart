import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: button(),
    );
  }
}
class button extends StatefulWidget
{
  State<StatefulWidget> createState()=> buttonState();
}
class buttonState extends State<StatefulWidget> {
bool check =true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
          borderRadius: check ? BorderRadius.circular(7) : BorderRadius.circular(50),
          color: Colors.green,
          child: InkWell(
            onTap: (){
              check=false;
              setState(() {

              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: check ? 50 : 40,
              width: check?  80 : 40,

              child: check ?  Center(
                child: Text("Login", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),),
              ) : Icon(Icons.done),
            ),
          ),
        )
    );
  }
}