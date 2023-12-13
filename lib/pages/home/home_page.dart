import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/account/account.dart';
import 'package:nubank/pages/home/actions/menu_itens.dart';
import 'package:nubank/pages/home/creditsCard/credit_card.dart';
import 'package:nubank/pages/home/creditsCard/my_credits_card.dart';
import 'package:nubank/pages/home/descubra/descubra.dart';
import 'package:nubank/pages/home/investiments/investiments.dart';
import 'package:nubank/pages/home/models/header.dart';
import 'package:nubank/pages/home/notifications/notification_page.dart';
import 'package:nubank/pages/home/safe/safe.dart';
import 'package:nubank/pages/shopping/shopping_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Header(),
             AccountNuBank(),
             MenuItens(),
             Divider(thickness: 1.6,),
             MyCreditCards(),
             NotificationsPage(), 
             Divider(thickness: 1.6,),
             CreditCard(),
             Divider(thickness: 1.6,),
             Investiments(),
             Divider(thickness: 1.6,),
             SafeWidget(),
             Divider(thickness: 1.6,),
             ShoppingWidget(),
             Divider(thickness: 1.6,),
             DescubraWidget(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
    preferredSize: const Size.fromHeight(0), 
    child: AppBar(elevation: 0,systemOverlayStyle: SystemUiOverlayStyle.dark,)
    );
  }
}