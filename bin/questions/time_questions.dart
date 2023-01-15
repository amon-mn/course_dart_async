import 'dart:io';

//implementar o Timing!

class TimeQuestions {
  List<String> questionsHour = [
    'Que horas são?',
    'São que horas?',
    'que horas são?',
    'são que horas?'
  ];

  List<String> questionsHourExcept = [
    'horas',
    'horas?',
    'Horas?'
        'Horas'
  ];

  List<String> questionsDay = [
    'Que dia é hoje?',
    'Hoje é que dia?',
    'Em que dia estamos?',
    'que dia é hoje?',
    'hoje é que dia?',
    'em que dia estamos?',
  ];

  List<String> questionsDayExcept = [
    'dia',
    'dia?',
    'Dia?',
    'que dia?',
    'que dia'
  ];

  List<String> questionsYear = [
    'Em que ano estamos?',
    'em que ano estamos?',
    'que ano?'
  ];

  List<String> questionsYearExcept = ['que ano?', 'ano', 'Ano'];

  String question;
  DateTime date = DateTime.now();
  String amxBot = 'AmxBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime() {
    //verificar se estamos numa pergunta sobre Tempo
    if (questionsHourExcept.contains(question) ||
        questionsDayExcept.contains(question) ||
        questionsYearExcept.contains(question)) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {
    if (questionsHour.contains(question)) {
      print('verificando se a pergunta é sobre as horas');
      String _botAnswer =
          amxBot + ' Opa! são : ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (questionsDay.contains(question)) {
      String _botAnswer = amxBot + ' Opa! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (questionsYear.contains(question)) {
      String _botAnswer = amxBot + ' Opa! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (questionsHourExcept.contains(question)) {
      String _botQuestion = amxBot + ' Não entendi, você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = amxBot +
            ' Beleza, são : ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {
        String _botAnswer = amxBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (questionsDayExcept.contains(question)) {
      String _botQuestion =
          amxBot + ' Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = amxBot + ' Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {
        String _botAnswer = amxBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (questionsYearExcept.contains(question)) {
      String _botQuestion =
          amxBot + ' Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = amxBot +
            ' Beleza, estamos no ano de 2077, a pandemia já está terminando... \n '
                'Brincadeirinha! estamos em : ${date.year}';
        print(_botAnswer);
      } else {
        String _botAnswer = amxBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
