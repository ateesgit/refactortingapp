import 'package:flutter/material.dart';
import 'package:refactortingapp/widgets/custombutton.dart';
import 'package:refactortingapp/widgets/customtextfield.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
  
class _HomeState extends State<Home> {
  late double n1, n2;
  double op = 0; // 1st Number, 2nd Number and Output.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Text(
              'Simple Calculator',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CustomTextField(
                    hint: '1st Number',
                    onChanged: (s) {
                      n1 = double.parse(s);
                      print(n1);
                    }),
                SizedBox(width: 10),
                CustomTextField(
                    hint: '2nd Number',
                    onChanged: (s) {
                      n2 = double.parse(s);
                      print(n2);
                    })
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    symbol: '+',
                    onTap: () {
                      setState(() {
                        op = (n1 + n2);
                      });
                    }),
                CustomButton(
                    symbol: '-',
                    onTap: () {
                      setState(() {
                        op = (n1 - n2);
                      });
                    }),
                CustomButton(
                    symbol: '×',
                    onTap: () {
                      setState(() {
                        op = (n1 * n2);
                      });
                    }),
                CustomButton(
                    symbol: '÷',
                    onTap: () {
                      setState(() {
                        if (n2 == 0)
                          op = -1;
                        else
                          op = (n1 / n2).toDouble();
                      });
                    }),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Output',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                child: Text(
                  op.toStringAsFixed(2),
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}