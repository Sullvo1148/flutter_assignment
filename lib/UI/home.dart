import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(


        
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey[700],
        ),


        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.notifications_active),
            ),
            Tab(
              icon: Icon(Icons.explore),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
          indicatorColor: Colors.blueGrey[900],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
        ),
        backgroundColor: Colors.blueGrey[700],
        


        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Text(
                  'Notify',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Text(
                  'Map',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Text(
                  'Setup',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
