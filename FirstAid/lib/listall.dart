import 'package:FirstAid/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FirstAid/cases.dart';

class Listall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: cases.length,
          itemBuilder: (context,index){
            return Card(
              child: InkWell(
                onTap: () {Navigator.pushNamed(context,'$detailsViewRoute',arguments: cases[index],);}
                ,child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(cases[index].title),
                ),
              ),
            );
          }
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