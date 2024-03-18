import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // registrarseo1Q (1:187)
        width: double.infinity,
        height: 839 * fem,
        decoration: BoxDecoration(
          color: Color(0xfff5f5f8),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: -MediaQuery.of(context).size.height * 0.1,
              child: Image.asset(
                'assets/images/Encabezado-Login-Registro.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1, // Aumenta este valor para mover el logo hacia abajo
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/logo3.png',
                    width: MediaQuery.of(context).size.width * 0.8, // Aumenta este valor para hacer el logo más grande
                    // Agrega height si necesitas un valor específico de altura
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle51dG (1:191)
              left: 54 * fem,
              top: 212 * fem,
              child: Align(
                child: SizedBox(
                  width: 331 * fem,
                  height: 571 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // notienesunacuentaregstrateXLi (1:192)
              left: 102 * fem,
              top: 722 * fem,
              child: Align(
                child: SizedBox(
                  width: 261 * fem,
                  height: 21 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.lato(
                        //'Nunito',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.3639999628 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xffffffff),
                        decorationColor: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: '¿No tienes una cuenta? ',
                          style: GoogleFonts.lato(
                            //'Mulish',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.255 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff000000),
                            decorationColor: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'Regístrate',
                          style: GoogleFonts.lato(
                            //'Mulish',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.255 * ffem / fem,
                            decoration: TextDecoration.underline,
                            color: Color(0xff1a1d85),
                            decorationColor: Color(0xff1a1d85),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle36xTx (1:193)
              left: 80 * fem,
              top: 607 * fem,
              child: Align(
                child: SizedBox(
                  width: 280 * fem,
                  height: 55 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xff1a1d85),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xccffffff),
                          offset: Offset(4 * fem, 4 * fem),
                          blurRadius: 3 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // registrarsex6a (1:194)
              left: 178 * fem,
              top: 623 * fem,
              child: Align(
                child: SizedBox(
                  width: 98 * fem,
                  height: 23 * fem,
                  child: Text(
                    'Registrarse',
                    style: GoogleFonts.lato(
                      //'Mulish',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.255 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // correoelectrnicopuU (1:195)
              left: 95 * fem,
              top: 455 * fem,
              child: Align(
                child: SizedBox(
                  width: 150 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Correo electrónico',
                    style: GoogleFonts.lato(
                      //'Noto Sans',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3625 * ffem / fem,
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line3WnJ (1:196)
              left: 96 * fem,
              top: 485.0000065211 * fem,
              child: Align(
                child: SizedBox(
                  width: 258.99 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // contraseaECW (1:197)
              left: 95 * fem,
              top: 528 * fem,
              child: Align(
                child: SizedBox(
                  width: 94 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Contraseña',
                    style: GoogleFonts.lato(
                      //'Noto Sans',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3625 * ffem / fem,
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line57XC (1:198)
              left: 95 * fem,
              top: 559 * fem,
              child: Align(
                child: SizedBox(
                  width: 259 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffb4b4b4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // welcometocoincrazeELv (1:199)
              left: 91 * fem,
              top: 347 * fem,
              child: Align(
                child: SizedBox(
                  width: 260 * fem,
                  height: 30 * fem,
                  child: Text(
                    'Welcome to Coin Craze',
                    style: GoogleFonts.lato(
                      //'Urbanist',
                      fontSize: 25 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle8jYa (1:200)
              left: 80 * fem,
              top: 255 * fem,
              child: Align(
                child: SizedBox(
                  width: 280 * fem,
                  height: 58 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xffa8a8a8),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xccffffff),
                          offset: Offset(4 * fem, 4 * fem),
                          blurRadius: 3 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle921t (1:201)
              left: 222 * fem,
              top: 255 * fem,
              child: Align(
                child: SizedBox(
                  width: 138 * fem,
                  height: 58 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40 * fem),
                      color: Color(0xff1a1d85),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iniciarsesinifQ (1:202)
              left: 105 * fem,
              top: 272 * fem,
              child: Align(
                child: SizedBox(
                  width: 106 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Iniciar sesión',
                    style: GoogleFonts.lato(
                      //'Mulish',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.255 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // registrartyC (1:203)
              left: 256 * fem,
              top: 272 * fem,
              child: Align(
                child: SizedBox(
                  width: 75 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Registrar',
                    style: GoogleFonts.lato(
                      //'Mulish',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.255 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // pilademonedas2mXC (1:204)
              left: 200 * fem,
              top: 393 * fem,
              child: Align(
                child: SizedBox(
                  width: 40 * fem,
                  height: 38 * fem,
                  child: Image.asset(
                    'assets/images/pila-de-monedas.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // image12Gyk (1:205)
              left: 51 * fem,
              top: 72 * fem,
              child: Align(
                child: SizedBox(
                  width: 343 * fem,
                  height: 62 * fem,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
