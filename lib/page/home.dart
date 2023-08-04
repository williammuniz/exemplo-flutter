import 'dart:developer';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web Publico aa"),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 0, 40),
                child: Text(
                  "teste",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height: 400,
              child: GestureDetector(
                onDoubleTap: () => log('Clicou 2x'),
                onTap: () {
                  log('CLicou na imagem');
                },
                child: Image.asset("images/formula1.jpeg"),
              ),
            ),

            //Botao vermelho
            GestureDetector(
              onTap: () => log('Botao'),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(50)),
                child: const Text('Clique Aqui'),
              ),
            ),


            //botao texto
            TextButton(
                onPressed: () => log('TextButton clicado'),
                child: const Text(
                  'Botao',
                )
            ),

            //botao elevado
            ElevatedButton(onPressed: () => log("elevate"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text('Elevated BUtton'))
          ],
        ),
      ),
    );
  }
}
