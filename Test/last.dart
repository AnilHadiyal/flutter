import 'package:flutter/material.dart';

class last extends StatefulWidget {
  //const last(required String name2, {super.key, required String name2, required String email2, required String passwore2});

  String lname;
  String lpassword;
  String lemail;
  String lmobilno;

  last({required this.lpassword,required this.lemail,required this.lname,required this.lmobilno});
  @override
  State<last> createState() => _lastState();
}

class _lastState extends State<last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            Text("name: ${widget.lname}"),
            SizedBox(height: 10,),
            Text("password: ${widget.lpassword}"),
            SizedBox(height: 10,),
            Text("mobilno: ${widget.lmobilno}"),
            SizedBox(height: 10,),
            Text("email: ${widget.lemail}"),
          ],
        ),
      ),
    );
  }
}
