import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hackforgoodecommerce/pages/marketplace/produtos/produtos.dart';

class VendedorPage extends StatefulWidget {
  @override
  _VendedorPageState createState() => _VendedorPageState();
}

class _VendedorPageState extends State<VendedorPage> {
  @override
  Widget build(BuildContext context) {
    List vendedores = [
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
      {'image': 'assets/agente.png', 'title': 'Vendedor'},
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
                        Text(
                          'Buscar vendedor',
                          style: TextStyle(fontSize: 32),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Procurar um vendedor',
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
                                return  GestureDetector(
                                  onTap: (){
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProdutosPage()),
                                    );
                                  },
                                  child: Container(
                                    width: 150,
//                                  height: 200,
                                    margin: EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey, width: 0.5)),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: 20,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                RatingBar(
                                                  itemSize: 12,
                                                  initialRating: 3,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemCount: 5,
                                                  itemPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 4.0),
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Image.asset(
                                            item['image'],
                                            width: 50,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: double.maxFinite,
                                            height: 50,
                                            color: Color(0XFFf5f5ff),
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(item['title']),
                                                Text('4KM', style: TextStyle(color: Colors.pink),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList()),
                        )
                      ])))
        ]));
  }
}
