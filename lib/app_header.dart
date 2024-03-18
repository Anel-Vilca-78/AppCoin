import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/services/user_service.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppHeader({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('assets/images/logo.png'),
      title: const Text('COIN CRAZE'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String userEmail = "";

  @override
  void initState() {
    super.initState();
    fetchUserEmail('1');
  }

  fetchUserEmail(String userId) async {
    try {
      String email = await UserService.getUserEmail(userId);
      setState(() {
        userEmail = email;
      });
    } catch (e) {
      print('Error al obtener el correo electrónico del usuario: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
                'Correo: $userEmail'), // Aquí se muestra el correo electrónico
            decoration: BoxDecoration(
              color: Color(0xFF1A1D85),
            ),
          ),
          ListTile(
            title: Text('Opción 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
