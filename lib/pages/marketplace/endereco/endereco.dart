import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';
import 'package:hackforgoodecommerce/pages/marketplace/home/home.dart';

class EnderecoPage extends StatefulWidget {
  @override
  _EnderecoPageState createState() => _EnderecoPageState();
}

class _EnderecoPageState extends State<EnderecoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
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
                    child: Icon(Icons.arrow_back, color: Color(0XFFff7878)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Endereço',
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 11,
                        child: Text(
                          'Av. Jesus Candian, nº: 795 Bairro Mangueira Rural, cidade: Ubá-MG',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Radio(
                          groupValue: 'endereco',
                          value: 'endereco',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                elevation: 5,
                text: 'Continuar Pagamento',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
