import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';
import 'package:nubank/pages/home/controllers/controller_home_page.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 12 ,
          children: [
            _iconCreditCard(),
            _textCreditCard(),
            _invoice(),
            _limitDisponible(),
            _installments(),
          ]),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura atual',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (ControllerHomePage) {
              return Text(
                ControllerHomePage.CreditCardValue,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }


  _limitDisponible(){
    return Text('Limite Disponivel de R\$ 4.000',style: TextStyle(color: Colors.grey),);
  }


  _installments(){
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 16),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(color: greyColor, borderRadius: BorderRadius.circular(12)),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        child: Text('Parcelar Fatura', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
    );
  }
}
