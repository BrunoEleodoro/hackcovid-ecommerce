import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hackforgoodecommerce/components/custom_button.dart';
import 'package:hackforgoodecommerce/pages/marketplace/home/home.dart';
import 'package:hackforgoodecommerce/pages/marketplace/pagamento/pagamento.dart';

class MeuPedido extends StatefulWidget {
  @override
  _MeuPedidoState createState() => _MeuPedidoState();
}

class _MeuPedidoState extends State<MeuPedido> {
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
                    'Seu Pedido',
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          flex: 4, child: Image.asset('assets/camiseta1.png')),
                      Expanded(
                        flex: 6,
                        child: Text(
                          'Camisa Polo Feminina',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Rastreio',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Transform.rotate(
                            angle: pi / 4,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0XFF667eea),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Pendente')
                        ],
                      ),
                      Container(
                        width: 30,
                        height: 2,
                        margin: EdgeInsets.only(left: 2, right: 2, top: 15),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Column(
                          children: <Widget>[
                            Transform.rotate(
                              angle: pi / 4,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0XFF667eea),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7))),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Aceito')
                          ],
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 2,
                        margin: EdgeInsets.only(left: 2, right: 2, top: 15),
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Transform.rotate(
                            angle: pi / 4,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0XFF667eea),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('A caminho')
                        ],
                      ),
                      Container(
                        width: 30,
                        height: 2,
                        margin: EdgeInsets.only(left: 2, right: 2, top: 15),
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Transform.rotate(
                            angle: pi / 4,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
//                                  color: Color(0XFF667eea),
                                  border: Border.all(
                                      color: Colors.grey, width: 1),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Entregue')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
