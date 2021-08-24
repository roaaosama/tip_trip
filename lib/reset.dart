import 'package:flutter/material.dart';

// ignore: camel_case_types
class reset_pass extends StatefulWidget {
  const reset_pass();

  @override
  _reset_passState createState() => _reset_passState();
}

// ignore: camel_case_types
class _reset_passState extends State<reset_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))],
      ),
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/newlogo.png'),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(60.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ]),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.indigo)),
                          labelText: 'Enter Email',
                          labelStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(Icons.email, color: Colors.indigo),
                          fillColor: Colors.grey[100],
                          filled: true),
                      obscureText: true,
                    ),
                  ),

                  // ignore: deprecated_member_use
                  RaisedButton(
                    color: Colors.indigo,
                    onPressed: () {},
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text('Reset password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
