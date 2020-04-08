import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProdutosPage extends StatefulWidget {
  @override
  _ProdutosPageState createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    List vendedores = [
      {'image': 'assets/camiseta1.png', 'title': 'Camisa X', 'preco':'R\$24.99', 'star':'4.9'},
      {'image': 'assets/camiseta2.jpg', 'title': 'Blusa Y', 'preco':'R\$22.99', 'star':'4.9'},
      {'image': 'assets/camiseta3.jpg', 'title': 'Blusa', 'preco':'R\$14.99', 'star':'4.9'},
      {'image': 'assets/camiseta4.jpg', 'title': 'Roupa', 'preco':'R\$34.99', 'star':'4.9'},
    ];
    return Scaffold(
        backgroundColor: Color(0XFFf5f6f8),
        body: Stack(children: <Widget>[
          SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              padding: EdgeInsets.all(0),
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Icon(Icons.notifications_none),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Procurar um produto',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Wrap(
                              alignment: WrapAlignment.center,
                              children: vendedores.map((item) {
                                return Container(
                                  width: 150,
//                                  height: 200,
                                  margin: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      border: Border.all(
//                                          color: Colors.grey, width: 0.5)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                          item['image'],
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: double.maxFinite,
                                          height: 50,

                                          decoration: BoxDecoration(
                                              color: Color(0XFFf5f5ff),
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                          ),
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(item['title']),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(item['preco'], style: TextStyle(color: Colors.pink),),
                                                  Container(
                                                    color: Colors.pink,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(Icons.star, size: 15,color: Colors.white,),
                                                        Text(item['star'], style: TextStyle(color: Colors.white),),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }).toList()),
                        )
                      ])))
        ]));
  }
}
