import 'package:flutter/material.dart';

class DecimalConverter extends StatefulWidget {
  @override
  _DecimalConverterState createState() => _DecimalConverterState();
}

class _DecimalConverterState extends State<DecimalConverter> {
  String _binary = "0";
  String _decimal = "";

  void _onPressed(newNumber) {
    setState(() {
      // _binary = _binary + newNumber;
      // _decimal = int.parse(_binary, radix: 2).toRadixString(10);
      _decimal = _decimal + newNumber;
      _binary = int.parse(_decimal, radix: 10).toRadixString(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Decimal Converter"),
      ),
      body: new Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
          Widget>[
        Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Decimal -> Binary",
            )),
        Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            child: Text(
              '$_decimal',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                  fontSize: 35),
            )),
        Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            child: Text(
              '$_binary',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                  fontSize: 35),
            )),
        Expanded(
          flex: 1,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                child: MaterialButton(
                                  child: Text("1",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("1");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                  child: Text("2",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("2");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                child: MaterialButton(
                                  child: Text("3",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("3");
                                  },
                                  color: Colors.blue,
                                ),
                              ))
                        ]),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                child: MaterialButton(
                                  child: Text("4",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("4");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                  child: Text("5",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("5");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                child: MaterialButton(
                                  child: Text("6",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("6");
                                  },
                                  color: Colors.blue,
                                ),
                              ))
                        ]),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                child: MaterialButton(
                                  child: Text("7",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("7");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                  child: Text("8",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("8");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                child: MaterialButton(
                                  child: Text("9",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("9");
                                  },
                                  color: Colors.blue,
                                ),
                              ))
                        ]),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                child: MaterialButton(
                                  child: Text("0",
                                      style: new TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                      )),
                                  onPressed: () {
                                    _onPressed("0");
                                  },
                                  color: Colors.blue,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                child: MaterialButton(
                                    color: Color(int.parse(
                                        "#3580F9".replaceAll('#', '0xff'))),
                                    onPressed: () {
                                      setState(() {
                                        _binary = "0";
                                        _decimal = "";
                                      });
                                    },
                                    child: Text("Reset",
                                        style: new TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                        ))),
                              )),
                        ]),
                  ),
                ),
              ]),
        ),
      ]),
      )
    );
  }
}
