import 'package:flutter/material.dart';
import 'package:merupastore_app/UI/shopingcart.dart';

class ItemMerupa extends StatefulWidget {
  @override
  _ItemMerupaState createState() => new _ItemMerupaState();
}

class _ItemMerupaState extends State<ItemMerupa> {
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
        color: Colors.black,
        border: Border(top: BorderSide(color: Colors.amber, width: 5))),
    tabs: <Widget>[
      Tab(
        icon: Icon(
          Icons.photo_album,
          color: Colors.white,
        ),
        text: "Gallery",
      ),
      Tab(
        icon: Icon(Icons.account_balance_wallet, color: Colors.white),
        text: "Payment",
      ),
      Tab(
        icon: Icon(Icons.add_shopping_cart, color: Colors.white),
        text: "Cart",
      ),
      Tab(
        icon: Icon(Icons.account_circle, color: Colors.white),
        text: "Account",
      ),
      
    ],
  );
  List<Container> daftarItem = new List();

  var karakter = [
    {"nama": "kebaya 1", "gambar": "abc1.jpg"},
    {"nama": "kebaya 2", "gambar": "abc2.jpg"},
    {"nama": "kebaya 3", "gambar": "abc3.jpg"},
    {"nama": "kebaya 4", "gambar": "abc4.jpg"},
    {"nama": "kebaya 5", "gambar": "abc5.jpg"},
    {"nama": "kebaya 6", "gambar": "abc6.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarItem.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              color: Colors.brown,
              child: new Column(
                children: <Widget>[
                  new Hero(
                    tag: karakternya['nama'],
                    child: new Material(
                      child: new InkWell(
                        highlightColor: Colors.amber,
                        onTap: () =>
                            Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Detail(
                            nama: karakternya['nama'],
                            gambar: gambar,
                          ),
                        )),
                        child: new Image.asset(
                          "assets/$gambar",
                          height: 120,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                  ),
                  new Text(
                    karakternya['nama'],
                    style: new TextStyle(color: Colors.white, fontSize: 10.0),
                  )
                ],
              ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              backgroundColor: Color(0xFFE9E7DA),
              resizeToAvoidBottomPadding: false,
              appBar: new AppBar(
                title: new Text(
                  "Merupa Official Store",
                  style: new TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.brown,
                
                
                bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(myTabBar.preferredSize.height),
                    child: Container(color: Colors.brown, child: myTabBar)),
              ),
              
              body: TabBarView(
        children: <Widget>[
          Center(
            child: new GridView.count(
                crossAxisCount: 2,
                children: daftarItem,
              ),
            ),
          Center(
            child: Text("Coming Soon"),),
          Center(
            child: MyShopingCart()),
          Center(
            child: Text("Coming Soon"),),
        ],
        ),
              
              
            )));
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFE9E7DA),
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new BagianIcon(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                new Text(
                  "$nama\ Merupa By Yoela Meidiana",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.call,
            teks: "Call",
          ),
          new Iconteks(
            icon: Icons.message,
            teks: "Message",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.brown,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 18.0, color: Colors.brown),
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Deskripsi Item",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
