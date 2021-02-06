import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Bad result!';
      img = Image.asset('assets/images/bad.png');
    } else if (count == 4) {
      msg = 'Normal result!';
      img = Image.asset('assets/images/normal.png');
    } else {
      msg = 'Good result!';
      img = Image.asset('assets/images/good.png');
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(color: Colors.white),
          Text('Correct answers: $count of $total'),
          Divider(color: Colors.white),
          FlatButton(
            child: Text(
              'Repeat',
              style: TextStyle(fontSize: 22.0),
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}
