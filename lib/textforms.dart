import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: UsernamePassword(),
    );
  }
}
class UsernamePassword extends StatefulWidget
{
  State<StatefulWidget> createState()=> loginState();
}
class loginState extends State<StatefulWidget> {

static  String getval= "";

  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value){
                  getval=value;
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('Enter UserName'),
                ),
              ),
             SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('Enter Password'),
                ),
              ),
            ],
          ),
        )
    );
  }
}