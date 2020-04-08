import 'package:flutter/material.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFF42e97f),
          Color(0XFF38f8d2),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/abertura2.png',
                  width: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Bem vindo ao Mercadão',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Facilidade nas compras'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 300,
                      child: Stack(
//                        fit: StackFit.expand,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32.0),
                            child: Container(
                              width: double.maxFinite,
                              height: 300,
                              child: Card(
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Divulgue seus produtos agora de forma fácil e rápida, e consiga clientes do seu bairro',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              height: 40,
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 20),
                              child: CustomButton(
                                radius: 5,
                                text: 'VENDEDOR',
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    SizedBox(),
                    Expanded(
                        child: Container(
                      height: 300,
                      child: Stack(
//                        fit: StackFit.expand,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32.0),
                            child: Container(
                              width: double.maxFinite,
                              height: 300,
                              child: Card(
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Compre agora no conforto de sua casa, e ajude os comerciantes e vendedores locais',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              height: 40,
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 20),
                              child: CustomButton(
                                radius: 5,
                                text: 'CLIENTE',
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
