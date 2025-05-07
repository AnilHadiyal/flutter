import 'package:flutter/material.dart';
import 'package:new_page/last.dart';

class login extends StatefulWidget {
  //const login({super.key, required String name1, required String email1, required String password1, required mobilno1});

  String name1;
  String email1;
  String mobilno1;
  String password1;

  login({required this.email1,required this.name1,required this.mobilno1, required this.password1,});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailorpassword = TextEditingController();

  var pas = TextEditingController();

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: key,
        child: Center(
          child: Padding(padding: const EdgeInsets.all(35),
            child:Column(
              children: [
                SizedBox(height: 10,),
                Text("TutorialKart",style: TextStyle(fontSize: 45,color: Colors.blue),),
                SizedBox(height: 8,),
                Text("Login",style: TextStyle(fontSize: 20,color: Colors.black87),),
                SizedBox(height: 10,),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter valid value";
                    }else{
                      return null;
                    }
                  },
                  controller: emailorpassword,
                  decoration: InputDecoration(
                    labelText: "User Name or Email or Mobil.No",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7,),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter valid value";
                    }else{
                      return null;
                    }
                  },
                  controller: pas,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7,),
                TextButton(onPressed: (){

                }, child: Text("Fargot Password",style: TextStyle(color: Colors.blue),)),
                SizedBox(height: 7,),
                Container(height: 40,width: 1000,color: Colors.blue,
                  child: TextButton(onPressed: (){

                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(height: 8,),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dose have not Account?",style: TextStyle(),),
                    TextButton(onPressed: (){
                      String first = emailorpassword.text.toString();
                      String password = pas.text.toString();

                      String lname = widget.name1;
                      String lemail = widget.email1;
                      String lmobilno = widget.mobilno1;
                      String lpassword = widget.password1;

                      if(key.currentState!.validate())
                        {
                          if((first == lmobilno && password == lpassword) || (first == lemail && password == lpassword)){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>last(lname: lname, lemail:lemail, lmobilno: lmobilno, lpassword: lpassword,)));
                          }
                        }

                    }, child: Text("Sign in",style: TextStyle(color: Colors.blue),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
