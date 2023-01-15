import 'dart:io';
import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String amxBot = 'AmxBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().amxBotStream(interval: 1, maxCount: 10);
  var subscriber = myStream.listen((event) {
    print(
        '                                  AmxBot está ativo a $event segundos');
  }, onDone: () {
    print(
        'AmxBot está prestes a ser finalizado, por favor faça sua última pergunta!');
    a = false;
  });

  print('-- Iniciando o AmxBOT, aguarde..--');
  await BotClock().clock(2);
  print('AmxBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Tchau') ||
        usuario.contains('tchau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(amxBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else if (GoodManners(usuario).isThisManners()) {
      await BotClock().clock(2);
      GoodManners(usuario).goodManners();
    } else {
      await BotClock().clock(2);
      print(amxBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(amxBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando AmxBOT--');
}
