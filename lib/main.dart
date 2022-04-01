import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'view/login.dart' as LoginActivity;
import 'view/dashboard.dart' as DashboardActivity;
import 'view/kelolaGudang.dart' as KelolaGudangActivity;
import 'view/riwayatAktivitas.dart' as RiwayatAktivitasActivity;

void main() {
  runApp(new MaterialApp(
    title: "NAS Warehouse",
    home: LoginActivity.Login(),
    routes: <String, WidgetBuilder>{
      '/Dashboard': (BuildContext context) => DashboardActivity.Dashboard(),
      '/KelolaGudang': (BuildContext context) =>
          KelolaGudangActivity.KelolaGudang(),
      '/RiwayatAktivitas': (BuildContext context) =>
          RiwayatAktivitasActivity.RiwayatAktivitas(),
    },
  ));
}

// class MainActivity extends StatelessWidget {
//   const MainActivity({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
