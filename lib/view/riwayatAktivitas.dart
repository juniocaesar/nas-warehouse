import 'package:flutter/material.dart';
import 'components/mainDrawer.dart' as MainDrawerActivity;

class RiwayatAktivitas extends StatefulWidget {
  const RiwayatAktivitas({Key? key}) : super(key: key);

  @override
  State<RiwayatAktivitas> createState() => _RiwayatAktivitasState();
}

class _RiwayatAktivitasState extends State<RiwayatAktivitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Riwayat Aktivitas"),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: MainDrawerActivity.MainDrawer(),
      body: Text(""),
    );
  }
}
