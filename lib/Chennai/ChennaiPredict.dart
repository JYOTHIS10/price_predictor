import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';


//Doc Scanner Main Class
class ChennaiPredict extends StatefulWidget {
  ChennaiPredict({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChennaiPredictState createState() => _ChennaiPredictState();
}

class _ChennaiPredictState extends State<ChennaiPredict> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chennai Extimated Price"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              IconButton(
                  icon: Icon(Icons.home_sharp),
                  alignment: Alignment.center,
                  color: Colors.red,
                  iconSize: 72.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Predictor()),
                    );
                  }
              ),
              Spacer(),
            ],
          ),
          Text(
              "Estimated Price",
              style: TextStyle(fontSize:32,
                fontFamily:'Times New Roman',
                fontWeight: FontWeight.bold,
                color: Colors.red,)),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),

              Padding(
                padding: EdgeInsets.all(100),
                child: Text(
                    "97 Lakh",
                    style: TextStyle(fontSize: 42,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,)),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}