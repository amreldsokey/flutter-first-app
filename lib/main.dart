import 'package:flutter/material.dart';
import 'package:flutter_app_first/view/screens/home/HomeScreen.dart';
import 'package:flutter_app_first/view/screens/listingScreen/ListingScreen.dart';
import 'package:flutter_app_first/view/screens/splash/SplashScreen.dart';
import 'package:flutter_app_first/view/screens/splash/SplashScreen2.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//class MyAppBar extends StatelessWidget {
//  MyAppBar({this.title});
//
//  // Fields in a Widget subclass are always marked "final".
//
//  final Widget title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 56.0, // in logical pixels
//      padding: const EdgeInsets.symmetric(horizontal: 8.0),
//      decoration: BoxDecoration(color: Colors.blue[500]),
//      // Row is a horizontal, linear layout.
//      child: Row(
//        // <Widget> is the type of items in the list.
//        children: <Widget>[
//          IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation menu',
//            onPressed: null, // null disables the button
//          ),
//          // Expanded expands its child to fill the available space.
//          Expanded(
//            child: title,
//          ),
//          IconButton(
//            icon: Icon(Icons.search),
//            tooltip: 'Search',
//            onPressed: null,
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class MyScaffold extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // Material is a conceptual piece of paper on which the UI appears.
//    return Material(
//      // Column is a vertical, linear layout.
//      child: Column(
//        children: <Widget>[
//          MyAppBar(
//            title: Text(
//              'Example title',
//              style: Theme.of(context).primaryTextTheme.title,
//            ),
//          ),
//          Expanded(
//            child: Center(
//              child: Text('Hello, world!'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => SplashScreen2(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/home': (context) => ListingScreen(),
    },
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [const Locale('en', 'US'),
      const Locale('de', 'DE'),
      const Locale('ar', '  ')],
  ));
}
