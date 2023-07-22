import 'package:glimmerenglish_00/soru.dart';
class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('wander = dolaşmak', true),
    Question('trip = seyahat', true),
    Question('journey = karavan', false),
    Question('tourism = turizm', true),
    Question('traveler = zaman', false),
    Question('cruise = yiyecek', false),
    Question('adventure = iş', false),
    Question('tourist = turist', true),
    Question('vacation = pasaport', false),
    Question('tour = tur', true),
    Question('fly = uçmak', true),
    Question('traveller = gezgin', true),
    Question('live = canlı', true),
    Question('drive = sürmek', true),
    Question('food = yiyecek', true),
    Question('caravan = karavan', true),
    Question('passport = pasaport', true),
    Question('roam = dolaşmak', true),
    Question('accommodation = konaklama', true),
    Question('change of location = yer değişikliği', true),
    Question('visits = ziyaretler', true),
    Question('wayfaring = yolculuk', true),
    Question('jaunt = gezinti', true),
    Question('time = zaman', true),
    Question('hotel = otel', true),
    Question('exploration = keşif', true),
    Question('visa = vize', true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
