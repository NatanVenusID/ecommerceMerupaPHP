import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TabBar myTabBar= TabBar(
    indicator: BoxDecoration(
      color: Colors.black,border: Border(top: BorderSide(color: Colors.amber, width: 5))
    ),
    tabs: <Widget>[
      Tab(icon: Icon(Icons.add_box, color: Colors.white,),text:"Order",
      ),
      Tab(icon: Icon(Icons.account_balance_wallet,color:Colors.white),text:"Payment",
      ),
      Tab(icon: Icon(Icons.add_shopping_cart,color:Colors.white), text:"Basket",
      ),
      Tab(icon: Icon(Icons.notifications,color:Colors.white), text:"Notification",
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("Merupa Store"),
          backgroundColor: Colors.brown,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.brown,child: myTabBar)),
          ),
        body: TabBarView(
        children: <Widget>[
          Center(
            child: Text("Tab 1"),
            ),
          Center(
            child: Text("Tab 2"),),
          Center(
            child: Text("Tab 3"),),
          Center(
            child: Text("Tab 4"),),
        ],
        ),
        ),
      ),
    );
  }
}