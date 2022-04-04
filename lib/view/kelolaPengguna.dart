import 'package:flutter/material.dart';
import 'components/mainDrawer.dart' as MainDrawerActivity;

class KelolaPengguna extends StatefulWidget {
  const KelolaPengguna({Key? key}) : super(key: key);

  @override
  State<KelolaPengguna> createState() => _KelolaPenggunaState();
}

class _KelolaPenggunaState extends State<KelolaPengguna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Kelola Pengguna"),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: MainDrawerActivity.MainDrawer(),
      body: Text(""),
    );
  }
}
