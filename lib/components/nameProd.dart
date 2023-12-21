

import 'package:flutter/material.dart';

class NameProd extends StatefulWidget {
  final String nome;

  const NameProd(this.nome, {super.key});

  @override
  State<NameProd> createState() => _NameProdState();
}

class _NameProdState extends State<NameProd> {
  int qtdItem = 0;
  double preco = 5.3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade800,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/tirol.png',
                              height: 35.0,
                              width: 127,
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                                fontSize: 15, overflow: TextOverflow.fade),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      qtdItem++;
                                    });
                                    print(qtdItem);
                                  },
                                  child: Icon(Icons.add,size: 24, color: Colors.blue[900],)),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      qtdItem--;
                                    });
                                    print(qtdItem);
                                  },
                                  child: Icon(Icons.remove,size: 24, color: Colors.blue[900],)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        child: LinearProgressIndicator(
                          color: Colors.red.shade900,
                          value: qtdItem / 20,
                        ),
                        width: 170,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        child: Text(
                          'Preço: $preco',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Qtde: $qtdItem',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}