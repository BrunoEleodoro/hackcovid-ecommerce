import 'package:flutter/material.dart';
import 'package:hackforgoodecommerce/pages/introducao/escolha/escolha.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => EscolhaPage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF64b1fd),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/abertura1.png'),
            SizedBox(
              height: 40,
            ),
            Text('MERCADÃO', style: TextStyle(fontSize: 40),)

          ],
        ),
      ),
    );
  }
}
