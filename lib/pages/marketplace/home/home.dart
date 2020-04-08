import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:hackforgoodecommerce/pages/marketplace/vendedor/vendedor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Inicio", Colors.blue,
        labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    new TabItem(Icons.search, "Buscar", Colors.orange,
        labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    new TabItem(Icons.shopping_cart, "Carrinho", Colors.red),
    new TabItem(Icons.person, "Perfil", Colors.cyan),
    new TabItem(Icons.settings, "Configurações", Colors.yellow),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List categorias = [
      {'image': 'assets/dieta.png', 'title': 'Legumes e verduras'},
      {'image': 'assets/pao.png', 'title': 'Padaria'},
      {'image': 'assets/acougue.png', 'title': 'Açougue'},
      {'image': 'assets/burger.png', 'title': 'Lanchonetes'},
      {'image': 'assets/agua.png', 'title': 'Bebidas'},
      {'image': 'assets/servico.png', 'title': 'Serviços'},
      {'image': 'assets/bolo.png', 'title': 'Doces e Salgados'},
      {'image': 'assets/camisa.png', 'title': 'Vestimentas'},
      {'image': 'assets/comprimidos.png', 'title': 'Outros'},
    ];
    return Scaffold(
      backgroundColor: Color(0XFFf5f6f8),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 11,
                        child: Text(
                          'Encontre no seu bairro',
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Icon(Icons.notifications_none),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Wrap(
                      children: categorias.map((item) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => VendedorPage()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                item['image'],
                                width: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item['title'],
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList())
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
          print(_navigationController.value);
        });
      },
    );
  }
}
