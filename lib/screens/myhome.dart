import 'package:demo_app/widgets/binaryConverter.dart';
import 'package:demo_app/widgets/decimalConverter.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Converter'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Binary Converter",
                        style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BinaryConverter();
                        }),
                      );
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Decimal Converter",
                        style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        )),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new DecimalConverter());
                      Navigator.of(context).push(route);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
