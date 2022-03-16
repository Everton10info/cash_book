import 'package:cash_book/componets/dialogForm.dart';
import 'package:cash_book/componets/myDrawer.dart';
import 'package:cash_book/controllers/controllersList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  MyHome(){
    listTrController.getTransactions();
  }
  final listTrController = Get.find<ListTrController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              "LIVRO CAIXA",
              style: TextStyle(),
            ),
          ]),
        ),
      ),
      backgroundColor: Colors.blueGrey[400],
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img5.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_business),
        focusElevation: 50,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(child: DialogFrom());
              });
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
