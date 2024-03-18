import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'app_header.dart';
import 'bottom_nav_bar.dart';
import 'estaditicas-SF.dart';
import 'historial-sf.dart';
import 'Home-SF.dart';

class AgregarGasto extends StatefulWidget {
  @override
  _AgregarGastoState createState() => _AgregarGastoState();
}

class _AgregarGastoState extends State<AgregarGasto> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 3; // Asumiendo que AgregarGasto es el índice 3

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Determinar a qué página navegar
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Estadisticas()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Historial()));
        break;
      default:
        // Si el índice no corresponde a ninguna página, no hacemos nada.
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppHeader(scaffoldKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // agregargastorealizadoFwU (12:17)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 39 * fem),
                  child: Text(
                    'Agregar gasto realizado',
                    style: GoogleFonts.lato(
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.2 * ffem / fem,
                      color: Colors.black,  // Color del texto cambiado a negro
                    ),
                  ),
                ),

                Container(
                  // autogroup3hgjNWJ (5CrP7jKiapQ7GeWtYx3hgJ)
                  margin: EdgeInsets.fromLTRB(
                      41 * fem, 0 * fem, 41 * fem, 54 * fem),
                  padding: EdgeInsets.fromLTRB(
                      34 * fem, 37 * fem, 35 * fem, 35 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40 * fem),
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0x7f0005bd), Color(0x7fffffff)],
                      stops: <double>[0.996, 1],
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/fondo.iniciar sesión.png',
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(7 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // Descripción (ajuste del margen inferior)
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem), // Ajusta el valor de 8 * fem según sea necesario
                        child: Text(
                          'Descripción:',
                          style: GoogleFonts.lato(
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // rectangle1D9Y (12:8)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 18 * fem),
                        width: double.infinity,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7 * fem),
                          color: Color(0xfff5f5f8),
                        ),
                      ),
                      Container(
                        // Cantidad (ajuste del margen inferior)
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem), // Ajusta el valor de 8 * fem según sea necesario
                        child: Text(
                          'Cantidad:',
                          style: GoogleFonts.lato(
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // rectangle73uG (12:7)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 18 * fem),
                        width: double.infinity,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7 * fem),
                          color: Color(0xfff5f5f8),
                        ),
                      ),
                      Container(
                        // categoraaeJ (12:28)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Categoría:',
                          style: GoogleFonts.lato(
                            //'Noto Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // autogrouplmvxVWN (5CrPMe6CyT97MbNsipLMVx)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 18 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 10 * fem, 9 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f8),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: Text(
                          'Seleccionar',
                          style: GoogleFonts.lato(
                            //'Noto Sans',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff9e9e9e),
                          ),
                        ),
                      ),
                      Container(
                        // fechakhC (12:29)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 6 * fem),
                        child: Text(
                          'Fecha:',
                          style: GoogleFonts.lato(
                            //'Noto Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupqhzp5Dg (5CrPSin5HSfkYn3H31QhZp)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 47 * fem),
                        padding: EdgeInsets.fromLTRB(
                            11 * fem, 10 * fem, 11 * fem, 9 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f8),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: Text(
                          'dd/mm/aa',
                          style: GoogleFonts.lato(
                            //'Noto Sans',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff9e9e9e),
                          ),
                        ),
                      ),
                      Container(
                        // autogroup8ejxk4v (5CrPXJUmtgWJBV2iow8ejx)
                        margin: EdgeInsets.fromLTRB(64 * fem, 0 * fem, 63 * fem, 0 * fem),
                        width: double.infinity,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: Colors.white,  // Color de fondo cambiado a blanco
                          borderRadius: BorderRadius.circular(40 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x72000000),
                              offset: Offset(5 * fem, 10 * fem),
                              blurRadius: 1.5 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Agregar',
                            style: GoogleFonts.lato(
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.255 * ffem / fem,
                              color: Color(0xff000000),  // Asegurándonos de que el texto sea visible contra el fondo blanco
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
