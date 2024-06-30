import 'dart:convert';
import 'dart:io';

import 'package:meu_app/models/Aluno.dart';
import 'package:meu_app/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");
  
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTexto("Digite a nota ou S para sair");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas());
}