import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  var resultado = 0;
  var num1 = 0;
  var num2 = 0;

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(':: Calculadora - Simples ::'),
        ),
        body: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //texto que mostra o resultado
                  Text(
                    "Resultado: $resultado",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple // Colors.blue[900]),
                        ), // TextStyle
                  ),
                  // TextField numero 1
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(labelText: 'Informe o primeiro Valor'),
                    controller: t1,
                  ),
                  // TextField numero 2
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(labelText: 'Informe o segundo Valor'),
                    controller: t2,
                  ),

                  //espaço entre os campos
                  Padding(padding: const EdgeInsets.only(top: 20)),
                  //nova linha
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //botão de soma
                      MaterialButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: somar,
                        child: Text('+'),
                      ),
                      //botão de subtração
                      MaterialButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: subtrair,
                        child: Text('-'),
                      ),
                    ],
                  ),
                  //nova linha
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //botão de multiplicação
                      MaterialButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: multiplicar,
                        child: Text('*'),
                      ),
                      //botão de divisão
                      MaterialButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: dividir,
                        child: Text('/'),
                      ),
                    ],
                  ),
                ]))); // Scaffold

//metodos
  } // CalculadoraState
}
