import 'package:FirstAid/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cases.dart';

class Widgets extends StatefulWidget {
  
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Widgets> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: cases.map((cases) => _buildCaseCard(cases)).toList(),
    );
  }
  Widget _buildCaseCard(Case cases){
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Material(
        elevation: 10.0,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context,'$detailsViewRoute',arguments: cases,
            );
          },
            child: Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              color: cases.color,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [BoxShadow(color: Colors.grey)],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25.0,),
                  Text(
                    cases.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      ),),
                  SizedBox(height: 15.0,),
                  Hero(
                    tag: cases.image,
                    child: Image.asset(
                      cases.image,
                      fit: BoxFit.fitWidth,height: 100.0,),
                      ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Text(
                        cases.desc,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,),
                          textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  ),
            ),
          ),
        ),
      );
    }
}
