import 'package:flutter/material.dart';
import 'components/mainDrawer.dart' as MainDrawerActivity;

class KelolaGudang extends StatefulWidget {
  const KelolaGudang({Key? key}) : super(key: key);

  @override
  State<KelolaGudang> createState() => _KelolaGudangState();
}

class _KelolaGudangState extends State<KelolaGudang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Kelola Gudang"),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: MainDrawerActivity.MainDrawer(),
      body: Text(""),
    );
  }
}
