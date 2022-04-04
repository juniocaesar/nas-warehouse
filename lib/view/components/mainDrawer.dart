import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Center(
                child: Text(
              'NAS Warehouse',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            )),
          ),
          DrawerMenu(
            icon: Icons.dashboard,
            text: "Dashboard",
            navigate: "/Dashboard",
          ),
          DrawerMenuDropdown(
              icon: Icons.warehouse,
              text: "Gudang",
              menuChildren: [
                DrawerMenuChild(
                  icon: Icons.compare_arrows,
                  text: "Kelola Transaksi",
                  navigate: "/",
                ),
                DrawerMenuChild(
                  icon: Icons.corporate_fare,
                  text: "Master Barang",
                  navigate: "/",
                ),
                DrawerMenuChild(
                  icon: Icons.format_list_numbered,
                  text: "Tabel Stok",
                  navigate: "/",
                ),
                DrawerMenuChild(
                  icon: Icons.move_down,
                  text: "Master Pemasok",
                  navigate: "/",
                ),
                DrawerMenuChild(
                  icon: Icons.move_up,
                  text: "Master Pelanggan",
                  navigate: "/",
                ),
                DrawerMenuChild(
                  icon: Icons.local_shipping,
                  text: "Master Angkutan",
                  navigate: "/",
                ),
              ]),
          DrawerMenu(
            icon: Icons.supervisor_account,
            text: "Kelola Pengguna",
            navigate: "/KelolaPengguna",
          ),
          DrawerMenu(
            icon: Icons.history,
            text: "Riwayat Aktivitas",
            navigate: "/RiwayatAktivitas",
          ),
          DrawerMenu(
            icon: Icons.logout,
            text: "Logout",
            navigate: "/",
          ),
        ],
      ),
    );
  }
}

class DrawerMenuChild extends StatelessWidget {
  const DrawerMenuChild(
      {Key? key,
      required this.text,
      required this.navigate,
      required this.icon})
      : super(key: key);

  final String text;
  final String navigate;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Color.fromARGB(255, 0, 109, 98),
            ),
            SizedBox(width: 10.0),
            Text(
              text,
              style: TextStyle(fontSize: 14.0),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, navigate);
      },
    );
  }
}

class DrawerMenuDropdown extends StatelessWidget {
  const DrawerMenuDropdown(
      {Key? key,
      required this.icon,
      required this.text,
      required this.menuChildren})
      : super(key: key);

  final IconData icon;
  final String text;
  final List<Widget> menuChildren;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
          title: Container(
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 30.0,
                  color: Color.fromARGB(255, 0, 109, 98),
                ),
                SizedBox(width: 10.0),
                Text(
                  text,
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
          children: menuChildren),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu(
      {Key? key,
      required this.icon,
      required this.text,
      required this.navigate})
      : super(key: key);

  final IconData icon;
  final String text;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Container(
          child: Row(
            children: [
              Icon(
                icon,
                size: 30.0,
                color: Color.fromARGB(255, 0, 109, 98),
              ),
              SizedBox(width: 10.0),
              Text(
                text,
                style: TextStyle(fontSize: 16.0),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, navigate);
        },
      ),
    );
  }
}
