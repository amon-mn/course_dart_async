class GoodManners {
  String? question;

  List<String> goodMannersGreetings = [
    'Oi',
    'oi',
    'Ola',
    'ola',
    'Salve',
    'salve',
    'Fala',
    'fala'
  ];
  List<String> goodMannersQuestions = [
    'Tudo bem?',
    'Como vai?',
    'Como você está?',
    'tudo bem?',
    'como vai?',
    'como voce esta?',
    'Como cê tá?',
    'como ce ta?',
    'Suave?',
    'suave?'
  ];
  List<String> goodMannersDay = ['Bom Dia', 'bom dia', 'Bom dia'];
  List<String> goodMannersAfternoon = ['Boa Tarde', 'boa tarde', 'Boa tarde'];
  List<String> goodMannersNight = [
    'Boa Noite',
    'boa noite',
    'Boa Madrugada',
    'boa madrugada',
    'Boa noite',
    'Boa madrugada'
  ];
  List<String> goodMannersThank = [
    'Obrigado',
    'obrigado',
    'Obrigada',
    'obrigada',
    'Obg',
    'obg',
    'Valeu',
    'valeu',
    'Vlw',
    'vlw',
    'De nada',
    'de nada'
  ];

  bool isThisGoodManners = false;
  String amxBot = 'AmxBot: \n';

  GoodManners(this.question);

  bool isThisManners() {
    if (goodMannersGreetings.contains(question) ||
        goodMannersThank.contains(question) ||
        goodMannersDay.contains(question) ||
        goodMannersAfternoon.contains(question) ||
        goodMannersNight.contains(question) ||
        goodMannersQuestions.contains(question)) {
      isThisGoodManners = true;
    }
    return true;
  }

  void goodManners() {
    if (goodMannersDay.contains(question)) {
      print(amxBot + 'Bom dia flor do dia!');
    } else if (goodMannersAfternoon.contains(question)) {
      print(amxBot + 'Boa tarde!');
    } else if (goodMannersNight.contains(question)) {
      print(amxBot + 'A noite está linda hoje.');
    } else if (goodMannersGreetings.contains(question)) {
      print(amxBot + 'Opa, muito prazer!');
    } else if (goodMannersThank.contains(question)) {
      print(amxBot + 'De nada, fique à vontade :)');
    } else if (goodMannersQuestions.contains(question)) {
      print(amxBot +
          'Firmeza total, mais um ano se passando aí morô? \n'
              'Muita coletividade na quebrada, dinheiro no bolso, sem miséria e é nois!');
    }
  }
}
