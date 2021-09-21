import 'package:flutter/material.dart';
import 'package:flutter_login_project/ui/doctorList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const appTitle = "E-Health Care";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  static List<Widget> containers = [];

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: containers,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("My Accounts"),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                // Update the state of the app

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Doctors List"),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Doctors Hours"),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Ambulance Service"),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Seat Booking"),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact Us"),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
