import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'KochiPredict.dart';


//Doc Scanner Main Class
class Kochi extends StatefulWidget {
  Kochi({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _KochiState createState() => _KochiState();
}

class _KochiState extends State<Kochi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;
  bool btn5 = false;

  bool btn6 = false;
  bool btn7 = false;
  bool btn8 = false;
  bool btn9 = false;
  bool btn10 = false;
  List<String> options = <String>['Kakkanad', 'Edapally ', 'Vyttila ', 'Palarivattom '];
  String dropdownValue = 'Kakkanad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kochi Price Prediction"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Area',
                hintText: 'Area in Square Feet',
              ),
            ),
          ),
          Text(
              "BHK",
              style: TextStyle(fontSize: 22,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
                color: Colors.red,)),
          new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("1"),
                          color: btn1 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn1 = !btn1),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          //color: Colors.orangeAccent,
                          child: Text("2"),
                          color: btn2 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn2 = !btn2),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("3"),
                          color: btn3 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn3 = !btn3),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("4"),
                          color: btn4 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn4 = !btn4),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("5"),
                          color: btn5 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn5 = !btn5),
                        ))),
                Spacer(),
          ],
          ),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text("   "),
              Spacer(),
            ],
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text("   "),
              Spacer(),
            ],
          ),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text(
                  "Bathrooms",
                  style: TextStyle(fontSize: 22,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    color: Colors.red,)),
              Spacer(),
            ],
          ),
          new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("1"),
                          color: btn6 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn6 = !btn6),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          //color: Colors.orangeAccent,
                          child: Text("2"),
                          color: btn7 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn7 = !btn7),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("3"),
                          color: btn8 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn8 = !btn8),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("4"),
                          color: btn9 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn9 = !btn9),
                        ))),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(width: 50, height: 50,
                        child: RaisedButton(
                          child: Text("5"),
                          color: btn10 ? Colors.red : Colors.amberAccent,
                          onPressed: () => setState(() => btn10 = !btn10),
                        ))),
                Spacer(),
              ]
          ),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text("   "),
              Spacer(),
            ],
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text("   "),
              Spacer(),
            ],
          ),

          Text(
              "Location",
              style: TextStyle(fontSize: 22,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
                color: Colors.red,)),

          new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Spacer(),
              Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 3, right: 20),
                child: Container(
                  width: 300.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent,
                  ),
                    child: DropdownButtonHideUnderline(
                        child: Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                          child:  DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                            dropdownValue = newValue;
                            });
                          },
                          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20,),
                          selectedItemBuilder: (BuildContext context) {
                            return options.map((String value) {
                              return Container(
                                  alignment: Alignment.center,
                                  width: 250,
                                  child: Text(value, textAlign: TextAlign.end)
                              );

                           }).toList();
                          },
                          items: options.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                            );
                          }).toList(),
                        )
                      )
                    )
                )
              ),
              Spacer(),
              ]
          ),
          new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
            padding: EdgeInsets.only(left: 20, top: 30, bottom: 3, right: 20),
              child:SizedBox(width: 200,height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),),
                child: Text('Estimate Price', style: TextStyle(fontSize: 20.0),),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KochiPredict()),
                  );
                },
              )),
            ),
            Spacer(),
          ]
          ),
          Spacer(),
        ],
      ),
    );
  }
}




