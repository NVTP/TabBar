import 'package:flutter/material.dart';
import 'package:flutter_app_widget_test/screens/first_ui.dart';
import 'package:flutter_app_widget_test/screens/four_ui.dart';
import 'package:flutter_app_widget_test/screens/second_ui.dart';
import 'package:flutter_app_widget_test/screens/third_ui.dart';

class MainUI2 extends StatefulWidget {
  @override
  _MainUI2State createState() => _MainUI2State();
}

class _MainUI2State extends State<MainUI2> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 2',
        ),
        centerTitle: true,
      ),
      //ToDo ตัวเลือกข้างล่าง
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: TabBar(
          unselectedLabelColor: Colors.amber,
          labelColor: Colors.black,
          indicatorWeight: 5.0,
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.accessibility),
              text: 'First',
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet),
              text: 'Second',
            ),
            Tab(
              text: 'Third',
              icon: Icon(Icons.airline_seat_recline_extra),
            ),
            Tab(
              text: 'Four',
              icon: Icon(Icons.access_time),
            ),
          ],
        ),
      ),
      body: TabBarView(
        //TODo sync tabController
        controller: tabController,
        children: <Widget>[
          FirstUI(),
          SecondUI(),
          ThirdUI(),
          FourUI(),
        ],
      ),
    );
  }
}
