import 'package:FirstAid/about.dart';
import 'package:FirstAid/details.dart';
import 'package:FirstAid/detailsFak.dart';
import 'package:FirstAid/home.dart';
import 'package:FirstAid/listall.dart';
import 'package:FirstAid/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => MyHomePage());
    case listallViewRoute:
      return MaterialPageRoute(builder: (context) => Listall());
    case aboutViewRoute:
      return MaterialPageRoute(builder: (context) => About());
    case detailsViewRoute:
      return MaterialPageRoute(builder: (context) => CasesDetails(cases: settings.arguments));
    case detailsfakViewRoute:
      return MaterialPageRoute(builder: (context) => FirstaidkitDetails(fak: settings.arguments));
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}
 