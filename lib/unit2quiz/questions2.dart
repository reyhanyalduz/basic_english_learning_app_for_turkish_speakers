import 'package:glimmerenglish_00/soru.dart';
class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Clinic = klinik', true),
    Question('Doctor = doktor', true),
    Question('Surgery = hasta', false),
    Question('Nurse = hemşire', true),
    Question('Medical = tıbbi', true),
    Question('Patient = sağlık', false),
    Question('Ambulance = ambulans', true),
    Question('Surgeon = ilaç', false),
    Question('Care = bakım', true),
    Question('Medicine = ilaç', true),
    Question('Health = hastane', false),
    Question('Infirmary = revir', true),
    Question('Treatment = ambulans', false),
    Question('Intensive Care Unit = yoğun bakım ünitesi', true),
    Question('Dentist = diş hekimi', true),
    Question('Health Care = sağlık hizmeti', true),
    Question('Paramedics = paramedik', true),
    Question('Dermatologist = yaralı', false),
    Question('Radiology = radyoloji', true),
    Question('Emergency = acil durum', true),
    Question('Birth = doğum', true),
    Question('Hospital Pharmacy = hastane eczanesi', true),
    Question('Intensive Care = yoğun bakım', true),
    Question('Hospital = hastane', true),
    Question('Quarantine = karantina', true),
    Question('Trauma = travma', true),
    Question('Wounded = acil servis', false),
    Question('Psychiatric = psikiyatrik', true),
    Question('Emergency Department = acil servis', true),

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
 List<Question> _questionBank = [
    Question('Clinic = klinik', true),
    Question('Doctor = doktor', true),
    Question('Surgery = ameliyat', true),
    Question('Nurse = hemşire', true),
    Question('Medical = tıbbi', true),
    Question('Patient = hasta', true),
    Question('Ambulance = ambulans', true),
    Question('Surgeon = cerrah', true),
    Question('Doctors = doktorlar', true),
    Question('ICU (Intensive Care Unit) = yoğun bakım ünitesi', true),
    Question('Care = bakım', true),
    Question('Medicine = ilaç', true),
    Question('Health = sağlık', true),
    Question('Infirmary = revir', true),
    Question('Treatment = tedavi', true),
    Question('Intensive Care Unit = yoğun bakım ünitesi', true),
    Question('Nursing = hemşirelik', true),
    Question('Dentist = dişçi', true),
    Question('Hospitalize = hastaneye yatırmak', true),
    Question('Health Care = sağlık hizmeti', true),
    Question('Paramedics = paramedik', true),
    Question('Dermatologist = dermatolog', true),
    Question('Radiology = radyoloji', true),
    Question('Emergency = acil durum', true),
    Question('Birth = doğum', true),
    Question('Hospital Pharmacy = hastane eczanesi', true),
    Question('Intensive Care = yoğun bakım', true),
    Question('Hospital = hastane', true),
    Question('Inpatient = yatan hasta', true),
    Question('State = durum', true),
    Question('Quarantine = karantina', true),
    Question('Trauma = travma', true),
    Question('Wounded = yaralı', true),
    Question('Psychiatric = psikiyatrik', true),
    Question('Emergency Department = acil servis', true),

  ];

 */