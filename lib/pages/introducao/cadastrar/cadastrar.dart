import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';
import 'package:hackforgoodecommerce/pages/marketplace/home/home.dart';

class CadastrarPage extends StatefulWidget {
  @override
  _CadastrarPageState createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {
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
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Cadastrar',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CPF ou CNPJ'),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Whatsapp'),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                obscureText: true,
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
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                elevation: 5,
                text: 'Cadastrar',
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
                    'Já tem uma conta?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Entrar')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
