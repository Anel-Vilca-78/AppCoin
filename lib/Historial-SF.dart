import 'package:flutter/material.dart';
import 'app_header.dart'; // Asegúrate de que la ruta de importación sea correcta
import 'bottom_nav_bar.dart';
import 'estaditicas-SF.dart'; // Importa las páginas a las que necesitarás navegar
import 'Home-SF.dart';
import 'Agregar-Gasto-SF.dart';
import 'package:mi_aplicacion_flutter/services/expense_service.dart';

class Historial extends StatefulWidget {
  @override
  _HistorialState createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  int _currentIndex = 2; // Suponiendo que Historial es el índice 2
  Future<List<dynamic>>? _expensesFuture;

  @override
  void initState() {
    super.initState();
    _expensesFuture = ExpenseService.getExpenses();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Aquí puedes añadir la lógica para navegar a otras páginas basándote en el índice
    switch (index) {
      case 0:
        // Navega a Home, si no es parte de BottomNavBar, ajusta según sea necesario
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Estadisticas()));
        break;
      case 2:
        // Si ya estás en Historial, puedes optar por no hacer nada o refrescar la página
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AgregarGasto()));
        break;
      default:
        break;
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppHeader(scaffoldKey: _scaffoldKey),
      drawer:
          const AppDrawer(), // Asegúrate de implementar el Drawer si lo usas
      body: FutureBuilder<List<dynamic>>(
        future: _expensesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error al cargar los datos'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var expense = snapshot.data![index];
                String descripcion =
                    expense['description'] ?? 'Descripción no disponible';
                String cantidad = expense['mount']?.toString() ?? 'N/A';
                String fecha = expense['date'] ?? 'Fecha no disponible';
                String categoria =
                    expense['category'] ?? 'Categoría no disponible';

                return ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text(descripcion),
                  subtitle: Text("Cantidad: $cantidad - Categoría: $categoria"),
                  trailing: Text(fecha),
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
