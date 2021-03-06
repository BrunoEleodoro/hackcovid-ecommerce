import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackforgoodecommerce/pages/introducao/escolha/escolha.dart';
import 'package:hackforgoodecommerce/pages/introducao/inicial/inicial.dart';
import 'package:hackforgoodecommerce/pages/introducao/splash/splash.dart';
import 'package:hackforgoodecommerce/pages/marketplace/home/home.dart';
import 'package:hackforgoodecommerce/pages/marketplace/vendedor/vendedor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.pTSans().fontFamily
      ),
//      home: LoginPage(),
//    home: InicialPage(),
//    home: EscolhaPage(),
//      home: InicialPage(),
//    home: CadastrarPage(),
//    home: VendedorPage(),
      home: SplashScreen(),
    );
  }
}
