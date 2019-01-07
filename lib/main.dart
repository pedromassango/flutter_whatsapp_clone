import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static String url = 'https://www.abola.pt//img/fotos/abola2015/FOTOSAP/ESPANHA/2018/Messi12.jpg';

  static List<String> dados =[
    'Grupo dos Pereira',
    'Familia Silva',
    'Alice Pereira'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Color(0xFF1D5D51),
          title: Text("Whatsapp Clone"),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.message),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert),
            )
          ],
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: 'Ligações'.toUpperCase(),
              ),
              Tab(
                text: "Conversas".toUpperCase(),
              ),
              Tab(
                text: "Contatos".toUpperCase(),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.green,),
            Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: dados.length,
                itemBuilder: (context, index){
                  var title = dados.elementAt(index);

                  return Container(
                    width: double.maxFinite,
                    height: 98,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only( right: 8),
                                child: Image(
                                  width: 50,
                                  height: 50,
                                  image: NetworkImage('http://alice-williams.com/wp-content/uploads/2018/03/Alice-Williams-bio-photo-cropped-768x697.jpg'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text('Pedro: Eu acho que eu sei o oque...',
                                    style: TextStyle(
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text("11:45", style: TextStyle(
                                      color: Colors.green
                                  ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 4, left: 8),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(Radius.circular(100)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}
