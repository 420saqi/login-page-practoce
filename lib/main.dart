import 'package:flutter/material.dart';
import 'package:loginapp/homePage.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: homePage(),
    );
  }
}
class LoginPage extends StatefulWidget
{
  State<StatefulWidget> createState()=> loginPageState();
}
class loginPageState extends State<StatefulWidget>
{
String getval = "";
bool check =true;

Widget btn(BuildContext context)
{
  return Material(
    borderRadius: check ? BorderRadius.circular(7) : BorderRadius.circular(50),
    color: Colors.green,
    child: InkWell(
      onTap: () async {
        if (myKey.currentState!.validate()) {
          check = false;
          setState(() {

          });
          await Future.delayed(Duration(milliseconds: 2200));
         await Navigator.push(context,
              MaterialPageRoute(builder: (context)=>homePage()));
setState(() {
  check=true;
});
        }


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
  );
}


var myKey =GlobalKey<FormState>();
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: myKey,
          child: Column(
            children: [
              // First logo image
Container(height: 250,
width: double.infinity,
  child: Image.asset('assets/images/login.jpg',fit: BoxFit.cover,),
  color: Colors.red,
),
              // Space using Sized Box
              SizedBox(height: 20,),

              Text("Welcome $getval",style: TextStyle(fontSize: 20
                  ,fontWeight: FontWeight.bold),),

              SizedBox(height: 20,),

              userpass(context),
              SizedBox(height: 20,),
              //Button

              btn(context),



  ],
  ),
        ),
    ),
    );
  }


  Widget userpass(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              getval = value;
              setState(() {});
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 4),
                  borderRadius: BorderRadius.circular(10)
              ),
              label: Text('Enter UserName'),
            ),

            validator: (value) {
              if (value!.isEmpty) {
                return "Username is required";
              }
              return null;
            },
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
            validator: (value) {
              if (value!.isEmpty) {
                return "Password is required";
              }
              return null;
            },
          ),
        ],
      ),
    );

  }
}