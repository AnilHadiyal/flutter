import 'package:flutter/material.dart';
import 'package:new_page/Loginpage.dart';

void main(){
  runApp(MaterialApp(home: app(),));
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var mobilno = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(35),
          child:Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("TutorialKart",style: TextStyle(fontSize: 45,color: Colors.blue),),
                SizedBox(height: 8,),
                Text("Sign in",style: TextStyle(fontSize: 20,color: Colors.black87),),
                SizedBox(height: 10,),
                TextFormField(

                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter User Name";
                    }else{
                      return null;
                    }
                  },
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7,),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter emial";
                    }else{
                      return null;
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7,),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter password";
                    }else{
                      return null;
                    }
                  },
                  controller: password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 7,),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter Mobil.No";
                    }else{
                      return null;
                    }
                  },
                  controller: mobilno,
                  decoration: InputDecoration(
                    labelText: "Mobile.NO",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 40,width: 1000,color: Colors.blue,
                  child: TextButton(onPressed: (){
                    String name1 = name.text.toString();
                    String email1 = email.text.toString();
                    String password1 = password.text.toString();
                    String mobileno1 = mobilno.text.toString();

                    if(formkey.currentState!.validate()){
                      if(name1==null || email1==null || password1==null || mobileno1==null){
                        print("Error...");
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login(name1:name1,email1:email1,password1:password1,mobilno1:mobileno1)));
                      }
                    }
                  }, child: Text("Sign in",style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
