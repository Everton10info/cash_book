import 'package:cash_book/Controllers/controller_list.dart';
import 'package:cash_book/views/coming_time.dart';
import 'package:cash_book/views/home.dart';
import 'package:cash_book/views/list_transaction_all.dart';
import 'package:cash_book/views/list_transactions_input.dart';
import 'package:cash_book/views/list_transactions_output.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  final controller = Get.find<ControllerLists>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 26, 5, 10),
      child: Drawer(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Container(
            color: Color.fromARGB(255, 223, 226, 224),
            child: ListView(
              padding: EdgeInsets.all(2),
              children: [
                 ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Inicial',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => Home(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Total ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 35, 37, 36),
                      fontSize: 21,
                    ),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => ListTransactionsView(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Receitas',
                    style: TextStyle(
                      color: Color.fromARGB(255, 35, 37, 36),
                      fontSize: 21,
                    ),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => ListTransactionsInput(),
                    );
                  },
                ),
                ListTile(
                  selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                  title: Text(
                    'Despesas',
                    style: TextStyle(color: Color.fromARGB(255, 35, 37, 36), fontSize: 21),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(
                      () => ListTransactionsOutputs(),
                    );
                  },
                ),
              
                  ListTile(
                    selectedTileColor: Color.fromARGB(255, 0, 82, 97),
                    title: Text(
                      'Débitos e Pagamentos ',
                      style: TextStyle(
                       
                            color:Color.fromARGB(255, 35, 37, 36),
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                      Get.to(
                        () => ListComingTime(),
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
