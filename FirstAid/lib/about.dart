import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(20, 40, 20, 80),
              alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [BoxShadow(color: Colors.grey)],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25.0,),
                  Text(
                    'Natthaphong Malaphan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      ),),
                  SizedBox(height: 15.0,),
                  Hero(
                    tag: "assets/images/IMG_.jpg",
                    child: Image.asset(
                      "assets/images/IMG_.jpg",
                      fit: BoxFit.cover),
                      ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Text(
                        "Project #1 Submission\n Mobile Development\n 60114440163 Natthaphong Malaphan",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,),
                          textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  ),
            ),
          ),

      floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      icon: const Icon(Icons.arrow_back_ios),
      label: const Text('กลับ'),
      onPressed: () => Navigator.pop(context),
      ),
    );
  }
}