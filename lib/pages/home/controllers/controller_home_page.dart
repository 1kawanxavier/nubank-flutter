
import 'package:get/get.dart';

class ControllerHomePage extends GetxController{

  String saldo = 'R\$ 2.500,00';
  bool eyesValue = true;
  String CreditCardValue = "R\$ 48604,00 ";

  void showValue(){
    eyesValue = !eyesValue;

    update();
  }

}