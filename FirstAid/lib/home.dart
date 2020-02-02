import 'package:FirstAid/cases.dart';
import 'package:FirstAid/listall.dart';
import 'package:FirstAid/routes.dart';
import 'package:FirstAid/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
  with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState()  {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: <Widget>[ 
                  ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[SizedBox(height: 10.0,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("assets/images/icon/first_aid_icon_android.png",
                height: 50,),
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15.0),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text('การปฐมพยาบาลเบื้องต้น'),
                  ),
                  Tab(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Container(
              height: 330.0,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  new Widgets(),
                  new Widgets(),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Text('อุปกรณ์ปฐมพยาบาลเบื้องต้น : First Aid Kit'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: fak.reversed
                    .map((fak) => _buildfakCard(fak))
                    .toList(),
              ),
              ), 
          ],
        ),
              ])
            )
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),onPressed: () {
              Navigator.pushNamed(context,'$listallViewRoute');
            },),
          InkWell(onTap: () {
            Navigator.pushNamed(context,'$listallViewRoute');
            },child: new Padding(
              padding: new EdgeInsets.all(10.0),
              child: new Text("รายการทั้งหมด"),
              ),
            ),
          IconButton(
            icon: Icon(Icons.people), onPressed: () {
              Navigator.pushNamed(context,'$aboutViewRoute');
            },),
        ],
      ),)
      );
  }

  Widget _buildfakCard(Firstaidkit fak){
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 125,
            width: 125,
          ),
          Positioned(
            left: 15.0,
            child: Container(
              height: 20.0,
              width: 25.0,
              decoration: BoxDecoration(
                color: Color(0XFFD2691F),
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
          ),
          Positioned(
            top: 7.0,
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(10.0),
              shadowColor: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context,'$detailsfakViewRoute',arguments: fak,);
                },
                child: Container(
                  height: 110.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    color: Color(0XFFABC4A5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Image.asset(
                        fak.itemimage,
                        fit: BoxFit.cover,
                        height: 70.0,
                      ),
                      Text(fak.itemname)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            child: Container(
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: Color(0XFFFE9741),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(3.0),
                  bottomRight: Radius.circular(3.0),
                  topLeft: Radius.circular(3.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}