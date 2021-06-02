import 'package:price_predictor/Kochii/Kochi.dart';
import 'Kochii/Kochi.dart';
import 'package:price_predictor/Chennai/Chennai.dart';
import 'package:price_predictor/Bangalore/Bangalore.dart';
import 'package:price_predictor/Mumbai/Mumbai.dart';
import 'package:price_predictor/Delhi/Delhi.dart';
import 'package:price_predictor/Kolkata/Kolkata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Predictor());
}

// App Class
class Predictor extends StatelessWidget {
  Predictor({Key key}) : super(key: key);
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Predictor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Home(title: '  Predictor'),
    );
  }
}

// App Home Page Class
class Home extends StatelessWidget {
  final String title;

  Home({this.title}) : super();
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Icon(Icons.home),
                Text(title)
                ]),
          actions: <Widget>[]),
      body: new HomePage(),
    );
  }
}

// Home Activity
class HomePage extends StatelessWidget {
  HomePage() : super();

  // Navigates to Kochi Price Prediction
  void _navToKochi(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Kochi(title: "Kochi Price Prediction"),
        ));
  }
  // Navigates to Chennai Price Prediction
  void _navToChennai(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Chennai(title: "Chennai Price Prediction"),
        ));
  }
  // Navigates to Bangalore Price Prediction
  void _navToBangalore(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Bangalore(title: 'Bangalore Price Prediction'),
        ));
  }
  // Navigates to Mumbai Price Prediction
  void _navToMumbai(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Mumbai(title: 'Mumbai Price Prediction'),
        ));
  }
  // Navigates to Delhi Price Prediction
  void _navToDelhi(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Delhi(title: 'Delhi Price Prediction'),
        ));
  }
  // Navigates to Kolkata Price Prediction
  void _navToKolkata(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new Kolkata(title: 'Kolkata Price Prediction'),
        ));
  }

  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            icon: Icon(Icons.home_sharp),
            color: Colors.red,
            iconSize: 72.0,
            onPressed: () {}
        ),
        Text(
            "House Price Predictor",
            style: TextStyle(fontSize:32,
              fontFamily:'Times New Roman',
              fontWeight: FontWeight.bold,
              color: Colors.red,)),
        new Spacer(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createButtons('Kochi', _navToKochi, context),
            createButtons('Chennai', _navToChennai, context),
            createButtons('Bangalore', _navToBangalore, context),
          ],
        ),
        new Spacer(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createButtons('Mumbai', _navToMumbai, context),
            createButtons('Delhi', _navToDelhi, context),
            createButtons('Kolkata', _navToKolkata, context),
          ],
        ),
        new Spacer(),
      ],
    );
  }
}

// Returns the button in card
Widget createButtons(String label, onPress, context) {
  return new GestureDetector(
    onTap: () {
      onPress(context);
    },
    child: new Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: new Container(
        height: 100,
        width: 100,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Spacer(),
            IconButton(
              icon: Icon(Icons.home_sharp),
              color: Colors.green,
              iconSize: 52.0,
                onPressed:(){}
            ),
            new Spacer(),
            new Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )),
            new Spacer(),
          ],
        ),
      ),
    ),
  );
}
