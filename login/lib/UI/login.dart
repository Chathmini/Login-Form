import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
  
}
class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar :new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.blue,
      ),
       backgroundColor: Colors.blueGrey,
       body: new Container(
         alignment:Alignment.bottomCenter,
         child:new Column(
           children: <Widget>[
             
             //form
             new Container(
               height:380.0,
               width : 380.0,
               color : Colors.teal,
               child: new Column(
                 children:<Widget>[
                   new TextField(
                   controller: _userController,
                   decoration: new InputDecoration(
                     hintText: "Username",
                     icon: new Icon(Icons.person),
                   ),
                   ),
                   new TextField(
                     controller:_passwordController,
                     decoration:new InputDecoration(
                       hintText:"Password",
                       icon: new Icon(Icons.lock),
                     ),
                   ),
                new Padding(padding : new EdgeInsets.all(10.5)),//add padding
                new Center(
                  child:new Row(
                    children: <Widget>[
                      //Login button
                      new Container(
                        margin : const EdgeInsets.only(left:38.0),
                        child:new RaisedButton(
                          onPressed:()=>debugPrint("LOGIN"),
                          color:Colors.redAccent,
                          child: new Text(
                            "LOGIN",
                            style: new TextStyle(
                              color:Colors.white,
                              fontSize: 16.9),),
                      )),
                      new Container(
                         margin : const EdgeInsets.only(left:120.0 ),
                        child:new RaisedButton(
                          onPressed:()=>debugPrint("CLEAR"),
                          color: Colors.redAccent,
                          child: new Text(
                            "CLEAR",
                            style: new TextStyle(
                              color:Colors.white,
                              fontSize:16.9
                            ),
                          ),) ,)
                      ],),)
                 ],
               ),

             ),
        
          ],
           ),
       ),
    );
    
  }
  
}