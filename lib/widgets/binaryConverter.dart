import 'package:flutter/material.dart';

class BinaryConverter extends StatefulWidget {
  @override
  _BinaryConverterState createState() => _BinaryConverterState();
}

class _BinaryConverterState extends State<BinaryConverter> {
  String _binary = "";
  String _decimal = "0";

  void _onPressed(newNumber) {
    setState(() {
      _binary = _binary + newNumber;
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Binary Converter"),
        ),
        body: new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Binary -> Decimal",
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                      fontSize: 35),
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_decimal',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                      fontSize: 35),
                )),
            Expanded(
              flex: 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: MaterialButton(
                                  child: Text("1"),
                                  onPressed: () {
                                    _onPressed("1");
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    color: Color(int.parse(
                                        "#F9F9F9".replaceAll('#', '0xff'))),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: MaterialButton(
                                  child: Text("0"),
                                  onPressed: () {
                                    _onPressed("0");
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                            color: Color(
                                int.parse("#3580F9".replaceAll('#', '0xff'))),
                            onPressed: () {
                              setState(() {
                                _binary = "";
                                _decimal = "0";
                              });
                            },
                            child: Text("Reset",
                                style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
