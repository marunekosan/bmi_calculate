import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI")
      ),
      body: Center(
        child: Column(children: <Widget>[
          Table(
            border: TableBorder.all(),
            children: const [
              TableRow(children: <Widget>[
                TableCell(child: Text("低体重 (痩せ)")),
                TableCell(child: Text("18.50未満")),
                TableCell(child: Text("低体重"))
              ]),
              TableRow(children: <Widget>[
                TableCell(child: Text("普通体重")),
                TableCell(child: Text("18.50以上〜25.00未満")),
                TableCell(child: Text("標準"))
              ]),
              TableRow(children: <Widget>[
                TableCell(child: Text("肥満 (1度)")),
                TableCell(child: Text("25.00以上〜30.00未満")),
                TableCell(child: Text("肥満"))
              ]),
              TableRow(children: <Widget>[
                TableCell(child: Text("肥満 (2度)")),
                TableCell(child: Text("	30.00以上〜35.00未満")),
                TableCell(child: Text("肥満"))
              ]),
              TableRow(children: <Widget>[
                TableCell(child: Text("肥満 (3度)")),
                TableCell(child: Text("35.00以上〜40.00未満")),
                TableCell(child: Text("高度肥満"))
              ]),
              TableRow(children: <Widget>[
                TableCell(child: Text("肥満 (4度)")),
                TableCell(child: Text("40.00以上")),
                TableCell(child: Text("高度肥満"))
              ])
            ]
          )
        ])
      )
    );
  }
}
