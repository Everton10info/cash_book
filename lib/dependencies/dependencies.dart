import 'package:cash_book/controllers/controllersList.dart';
import 'package:cash_book/helperDatabase/transactionHelpers.dart.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListTrController>(() => ListTrController());


  }
}
