import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter', style: TextStyle(color: Theme.of(context).primaryColor)),
            RaisedButton(
                child: Text('Back To Android'),
                onPressed: () async {
                  var result = await MethodChannel('NativeCommunication').invokeMethod('Flutter');
                  print('Flutter: $result');
                }
            )
          ],
        ),
      ),
    );
  }
}
