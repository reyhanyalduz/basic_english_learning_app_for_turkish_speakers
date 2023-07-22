import 'package:glimmerenglish_00/soru.dart';
class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Cooking = yemek yapmak', true),
    Question('Coding = kod yazmak', true),
    Question('Gardening = okumak', false),
    Question('Photography = fotoğraf çekmek', true),
    Question('Writing = yazı yazmak', true),
    Question('Reading = okumak', true),
    Question('Dancing = dans etmek', true),
    Question('Swimming = örgü örmek', false),
    Question('Hiking = doğa yürüyüşü yapmak', true),
    Question('Knitting = yemek yapmak', false),
    Question('Playing chess = gitar çalmak', false),
    Question('Bird watching = kuş gözlemi yapmak', true),
    Question('Playing video games = video oyunları oynamak', true),
    Question('Singing = şarkı söylemek', true),
    Question('Playing basketball = basketbol oynamak', true),
    Question('Coin collecting = alışveriş yapmak', false),
    Question('Drawing = yüzmek', false),
    Question('Sculpting = heykel yapmak', true),
    Question('Playing football = futbol oynamak', true),
    Question('Meditating = meditasyon yapmak', true),
    Question('Playing piano = piano çalmak', true),
    Question('Sewing = şarkı söylemek', false),
    Question('Playing tennis = futbol oynamak', false),
    Question('Playing board games = masa oyunları oynamak', true),

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


/*
Question('Cooking = yemek yapmak', true),
    Question('Coding = kod yazmak', true),
    Question('Gardening = bahçe işleri yapmak', true),
    Question('Photography = fotoğraf çekmek', true),
    Question('Writing = yazı yazmak', true),
    Question('Reading = okumak', true),
    Question('Dancing = dans etmek', true),
    Question('Swimming = yüzmek', true),
    Question('Hiking = doğa yürüyüşü yapmak', true),
    Question('Knitting = örgü örmek', true),
    Question('Playing chess = satranç oynamak', true),
    Question('Bird watching = kuş gözlemi yapmak', true),
    Question('Playing video games = video oyunları oynamak', true),
    Question('Singing = şarkı söylemek', true),
    Question('Playing basketball = basketbol oynamak', true),
    Question('Coin collecting = madeni para biriktirmek', true),
    Question('Drawing = çizim yapmak', true),
    Question('Sculpting = heykel yapmak', true),
    Question('Playing football = futbol oynamak', true),
    Question('Meditating = meditasyon yapmak', true),
    Question('Playing piano = piano çalmak', true),
    Question('Sewing = dikiş dikmek', true),
    Question('Playing tennis = tenis oynamak', true),
    Question('Playing board games = masa oyunları oynamak', true),

  ];
 */