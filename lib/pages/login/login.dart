import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                'Entrar',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Redefinir')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  setState(() {});
                },
                elevation: 5,
                text: 'Entrar',
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: Text('Ou')),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    color: Colors.red,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(MaterialCommunityIcons.google_plus),
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      color: Colors.blueAccent,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(MaterialCommunityIcons.facebook),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Não tem uma conta?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Cadastrar')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
