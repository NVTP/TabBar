import 'package:flutter/material.dart';
import 'package:flutter_app_widget_test/screens/first_ui.dart';
import 'package:flutter_app_widget_test/screens/second_ui.dart';
import 'package:flutter_app_widget_test/screens/third_ui.dart';

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> with SingleTickerProviderStateMixin{
  // TODO Tab with SingleTickerProvider
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    //TODO length: 3 คือ มี3แทบ
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Test Widget',
        ),
        centerTitle: true,
        bottom: TabBar(
          unselectedLabelColor: Colors.amber,
          labelColor: Colors.black,
          indicatorWeight: 5.0,
          indicatorColor: Colors.red,
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.accessibility
              ),
              text: 'First',
            ),
            Tab(
              icon: Icon(
                Icons.account_balance_wallet
            ),
              text: 'Second',
            ),
            Tab(
              text: 'Third',
              icon: Icon(
                  Icons.airline_seat_recline_extra
              ),
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
        ],
      ),
    );
  }
}
