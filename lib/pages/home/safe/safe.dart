import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/pages/home/colors/colors_standard.dart';

class SafeWidget extends StatelessWidget {
  const SafeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Seguros', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Proteção para você cuidar do que importa', style: TextStyle(color: Colors.grey),),
            _safeBottom(),
          ],
        ),
    );
  }


    _safeBottom(){
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: greyColor,
          ),
          margin: EdgeInsets.only(top: 12, bottom: 12),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(MdiIcons.heartOutline),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Seguro de Vida',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Conhecer',
                    style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
      );
    }
}