import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_treino/app/providers/loginProvider.dart';

class ListMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.white,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: Color.fromARGB(255, 225, 255, 199),
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );
    return Consumer<LoginProvider>(
        builder: (context, LoginProvider _loginProvider, w) {
      return Scaffold(
        appBar: AppBar(
          title: Text('${_loginProvider.user ?? '__'}'),
        ),
        body: Container(
          color: Colors.yellow.withAlpha(64),
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              Bubble(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 212, 234, 244),
                elevation: 1 * px,
                margin: BubbleEdges.only(top: 8.0),
                child: Text('TODAY', style: TextStyle(fontSize: 10)),
              ),
              Bubble(
                style: styleSomebody,
                child: Text('Opa.Opa.Opa.Opa.Opa.Opa.Opa.Opa.Opa.Opa.'),
              ),
              Bubble(
                style: styleMe,
                child: Text('Fala devs'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
