import 'package:cash_book/views/coming_time.dart';
import 'package:cash_book/views/home.dart';
import 'package:cash_book/views/list_transaction_all.dart';
import 'package:cash_book/views/list_transactions_input.dart';
import 'package:cash_book/views/list_transactions_output.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash_book/controllers/controllersList.dart';


class MyDrawer extends StatelessWidget {
  
   MyDrawer({Key? key}) : super(key: key);
 final listTrController = Get.find<ListTrController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 26, 5, 10),
      child: Drawer(       
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            
            color: Color.fromARGB(255, 245, 254, 255),
            child: ListView(
              padding: EdgeInsets.all(2),
              children: [
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Listas',
                    style: TextStyle(
                        color: Colors.black, fontSize: 23, ),
                  ),
                  onTap: () {
                    Get.to(
                      () => ListTransactionsView(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Listas de Entradas',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, ),
                  ),
                  onTap: () {
                    Get.to(
                      () => ListTransactionsInput(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Listas de Despesas',
                    style: TextStyle(
                        color: Colors.black, fontSize:20 ),
                  ),
                  onTap: () {
                    Get.to(
                      () => ListTransactionsOutputs(),
                    );
                  },
                ),
                ListTile(
                  
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                
                  title: Text(
                    'Vencendo ! ',
                    style: TextStyle(
                        color: listTrController.venceu.value==true ?Colors.red:Colors.black , fontSize: 20, ),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => ListComingTime(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'HOME',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, ),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => MyHome(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
