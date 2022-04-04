import 'package:flutter/material.dart';
import 'components/mainDrawer.dart' as MainDrawerActivity;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dashboard"),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: MainDrawerActivity.MainDrawer(),
      body: Container(
        child: Row(
          children: [
            Text("Masuk Sebagai: "),
            Text("Admin"),
          ],
        ),
      ),
    );
  }
}
