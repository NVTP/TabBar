import 'package:flutter/material.dart';
import 'package:flutter_app_widget_test/screens/first_ui.dart';
import 'package:flutter_app_widget_test/screens/four_ui.dart';
import 'package:flutter_app_widget_test/screens/second_ui.dart';
import 'package:flutter_app_widget_test/screens/third_ui.dart';

class MainUI3 extends StatefulWidget {
  @override
  _MainUI3State createState() => _MainUI3State();
}

class _MainUI3State extends State<MainUI3> {
  int c_index = 0;
  List<Widget> screen = [
    FirstUI(),
    SecondUI(),
    ThirdUI(),
    FourUI(),
  ];

  Widget show_screen; //todo เก็บค่า screen ที่โชว์

  @override
  void initState() {
    // TODO: implement initState
    show_screen = screen[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(//todo สไลด์ครึ่งหน้าจอ
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'XXXX',
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent
              ),
            ),
            ListTile(
              onTap: (){
                //TODO ในListTile ปิดท้านด้วยคำสั่ง  Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              leading: Icon(
                  Icons.account_box
              ),
              title: Text(
                'Home'
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 10.0
              ),
              child: Divider(
                height: 3.0,
                color: Colors.red,
              ),
            ),
            ListTile(
              onTap: (){
                //TODO ในListTile ปิดท้านด้วยคำสั่ง  Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.add_shopping_cart,
              ),
              title: Text(
                'Register'
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 10.0
              ),
              child: Divider(
                height: 3.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context){
          return IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
            ),
          );
        }),
        backgroundColor: Color(0xFF3df455),
        centerTitle: true,
        title: Text(
          'Test Widget 3',
        ),
      ),
      body: show_screen,
      bottomNavigationBar: Container(
        color: Colors.deepOrange,
        child: BottomNavigationBar(
          onTap: (value_data){
            setState(() {
              c_index = value_data;
              show_screen = screen[value_data];
            });
          },
          currentIndex: c_index,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.amber[800],
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.local_airport
              ),
              icon: Icon(
                Icons.local_airport
              ),
              title: Text(
                'First',
                style: TextStyle(
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.add_to_photos
              ),
              icon: Icon(
                Icons.add_to_photos
              ),
              title: Text(
                'Second'
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.airline_seat_recline_extra
              ),
              icon: Icon(
                Icons.airline_seat_recline_extra
              ),
              title: Text(
                'Third'
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.accessibility_new
              ),
              icon: Icon(
                Icons.accessibility_new
              ),
              title: Text(
                'Four'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
