import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print("Bem vindo a nossa calculadora!");
  print("Informe o primeiro numero:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo numero:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matemática (+, -, *, /)");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "0";

  switch (operacao) {
    case "+": 
      print(numero1 + numero2);
      break;
    case "-":
      print(numero1 - numero2);
      break;
    case "*":
      print(numero1*numero1);
      break;
    case "/":
      print(numero1 / numero2);
      break;
    default:
      print("A operação selecionada não existe");
      break;
  }
  
}
