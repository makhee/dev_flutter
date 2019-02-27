// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:netpx_flutter/tabs/home.dart';
import 'package:netpx_flutter/tabs/new_arrival.dart';
import 'package:netpx_flutter/tabs/ranking.dart';

void main() {
  runApp(new MaterialApp(
    // Title
      title: "Netpx",
      // Home
      home: new Main()));
}

class Main extends StatefulWidget {
  @override
  MainState createState() => new MainState();
}

// SingleTickerProviderStateMixin is used for animation
class MainState extends State<Main> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          text: "홈",
          icon: new Icon(Icons.home),
        ),
        new Tab(
          text: "신상품",
          icon: new Icon(Icons.card_giftcard),
        ),
        new Tab(
          text: "랭킹샵",
          icon: new Icon(Icons.stars),
        ),
        new Tab(
          text: "세일샵",
          icon: new Icon(Icons.attach_money),
        ),
        new Tab(
          text: "후기",
          icon: new Icon(Icons.message),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
        appBar: new AppBar(
          // Title
            title: new Text("NetPX"),
            // Set the background color of the App Bar
            backgroundColor: Colors.blue,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new Home(), new NewArrival(), new Temp(), new Temp(), new Temp()]));
  }
}

///**
// * https://flutter.dev/docs/catalog/samples/tabbed-app-bar
// */
//class Choice {
//  const Choice({this.title, this.icon, this.view});
//
//  final String title;
//  final IconData icon;
//  final Container view;
//}
//
//const List<Choice> choices = const <Choice>[
//  const Choice(title: '홈', icon: Icons.home),
//  const Choice(title: '신상품', icon: Icons.card_giftcard),
//  const Choice(title: '랭킹샵', icon: Icons.stars),
//  const Choice(title: '세일샵', icon: Icons.attach_money),
//  const Choice(title: '후기', icon: Icons.message)
//];
//
//class ChoiceCard extends StatelessWidget {
//  const ChoiceCard({Key key, this.choice}) : super(key: key);
//
//  final Choice choice;
//
//  @override
//  Widget build(BuildContext context) {
//    final TextStyle textStyle = Theme.of(context).textTheme.display1;
//    return Card(
//      color: Colors.white,
//      child: Center(
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Icon(choice.icon, size: 128.0, color: textStyle.color),
//            Text(choice.title, style: textStyle),
//          ],
//        ),
//      ),
//    );
//  }
//}