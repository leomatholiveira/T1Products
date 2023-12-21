
import 'package:flutter/material.dart';
import 'package:project_app/components/nameProd.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context, false),
              //onPressed: () { Scaffold.of(context).openDrawer(); },
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        //actions:
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icon.png',
                      fit: BoxFit.cover,
                      height: 35.0,
                    ),
                    Text(
                      'Produtos',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        /* scrollDirection: Axis.horizontal,*/
        children: [
          NameProd('REQUEIJAO CULINARIO CHEDDAR BIS 400 GR'),
          NameProd('NATA PT 300 GR'),
          NameProd('LEITE UHT INTEGRAL 1 L'),
          NameProd('IOGURTE BICAMADAS DE MORANGO PT 130 GR'),
          NameProd('LEITE EM PÓ INTEGRAL 400 G SC 10 KG'),
          NameProd('BEBIDA LACTEA COCO GAR 830 GR'),
          NameProd('MISTURA LÁCTEA CONDENSADA 395G'),
          NameProd('DOCE DE SORO DE LEITE CREMOR PT300GR'),
          NameProd('QUEIJO MUSSARELA SEM LACTO FAT ATM 150GR'),
          NameProd('CREME DE LEITE UHT 15% 1,010KG CREMOR'),
        ],
      ),
    );
  }
}