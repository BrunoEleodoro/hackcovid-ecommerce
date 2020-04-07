import 'package:flutter/material.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';
import 'package:hackforgoodecommerce/pages/cadastrar/cadastrar.dart';
import 'package:hackforgoodecommerce/pages/login/login.dart';

class EscolhaPage extends StatefulWidget {
  @override
  _EscolhaPageState createState() => _EscolhaPageState();
}

class _EscolhaPageState extends State<EscolhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Bem vindo ao Mercadão',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Facilidade nas compras',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/abertura2.png',
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    radius: 5,
                    text: 'Entrar',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastrarPage()),
                      );
                    },
                    radius: 5,
                    text: 'Cadastrar',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
