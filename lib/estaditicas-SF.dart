import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'app_header.dart'; // Asegúrate de que la ruta de importación sea correcta
import 'bottom_nav_bar.dart';
import 'Historial-SF.dart';
import 'Agregar-Gasto-SF.dart';
import 'Home-SF.dart';

// Convertimos Estadisticas en StatefulWidget para manejar el estado del índice seleccionado
class Estadisticas extends StatefulWidget {
  Estadisticas({Key? key}) : super(key: key);

  @override
  _EstadisticasState createState() => _EstadisticasState();
}

class _EstadisticasState extends State<Estadisticas> {
  int _selectedIndex = 0; // Índice seleccionado para BottomNavBar

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
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Historial()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AgregarGasto()));
        break;
      default:
        // Si el índice no corresponde a ninguna página, no hacemos nada.
        break;
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppHeader(scaffoldKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: Container(
        width: double.infinity,
        child: Container(
          // estaditicasqiN (12:62)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff5f5f8),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0 * fem, 4 * fem),
                blurRadius: 2 * fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupjg5kJZL (5CrU3kmo4d4JkNcGjSJG5k)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                width: double.infinity,
                height: 132 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/Encabezado-Historial.png',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle44DAW (12:73)
                      left: 52 * fem,
                      top: 26 * fem,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2 * fem,
                            sigmaY: 2 * fem,
                          ),
                          child: Align(
                            child: SizedBox(
                              width: 336 * fem,
                              height: 79 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50 * fem),
                                  color: Color(0xf2ffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // anlisisdegastostXY (12:74)
                      left: 103 * fem,
                      top: 34 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 228 * fem,
                          height: 34 * fem,
                          child: Text(
                            'Análisis de gastos',
                            style: GoogleFonts.lato(
                              //'Urbanist',
                              fontSize: 28 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2 * ffem / fem,
                              color: Color(0xff461f93),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // estadsticasn78 (12:79)
                      left: 168 * fem,
                      top: 73 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 96 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Estadísticas',
                            style: GoogleFonts.lato(
                              //'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2 * ffem / fem,
                              color: Color(0xff030303),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupccejfwc (5CrUA16PM3CWFLWEyFCCEJ)
                margin:
                    EdgeInsets.fromLTRB(28 * fem, 0 * fem, 14 * fem, 14 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupjjv8QPQ (5CrUFkRovhecBpjFfnjjV8)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 10 * fem, 145 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ultimos7dasjga (12:77)
                            margin: EdgeInsets.fromLTRB(
                                1 * fem, 0 * fem, 0 * fem, 222 * fem),
                            child: Text(
                              'Ultimos 7 días:',
                              style: GoogleFonts.lato(
                                //'Mulish',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.255 * ffem / fem,
                                color: Color(0xff461f93),
                              ),
                            ),
                          ),
                          Container(
                            // anlisisporcategorasF98 (12:78)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 20 * fem),
                            child: Text(
                              'Análisis por categorías:',
                              style: GoogleFonts.lato(
                                //'Mulish',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.255 * ffem / fem,
                                color: Color(0xff461f93),
                              ),
                            ),
                          ),
                          Container(
                            // image2Ye2 (12:80)
                            margin: EdgeInsets.fromLTRB(
                                31 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 215 * fem,
                            height: 211 * fem,
                            child: Image.asset(
                              'assets/images/EjemEstadis1.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle34U1t (12:81)
                      width: 7 * fem,
                      height: 482 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2 * fem),
                        color: Color(0xff454545),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
