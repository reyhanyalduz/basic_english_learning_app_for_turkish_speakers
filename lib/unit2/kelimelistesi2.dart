import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import '../kelime.dart';

class KelimeKartlari2 extends StatelessWidget {
  KelimeKartlari2({Key? key}) : super(key: key);

  List<Kelime> kelimeler2 = [
    Kelime('clinic', 'klinik'),
    Kelime('doctor', 'doktor'),
    Kelime('surgery', 'ameliyat'),
    Kelime('nurse', 'hemşire'),
    Kelime('medical', 'tıbbi'),
    Kelime('patient', 'hasta'),
    Kelime('ambulance', 'ambulans'),
    Kelime('surgeon', 'cerrah'),
    Kelime('doctors', 'doktorlar'),
    Kelime('ICU (Intensive Care Unit)', 'yoğun bakım ünitesi'),
    Kelime('care', 'bakım'),
    Kelime('medicine', 'ilaç'),
    Kelime('healthcare', 'sağlık hizmetleri'),
    Kelime('health', 'sağlık'),
    Kelime('treatment', 'tedavi'),
    Kelime('intensive care unit', 'yoğun bakım ünitesi'),
    Kelime('dentist', 'diş hekimi'),
    Kelime('health care', 'sağlık hizmeti'),
    Kelime('paramedics', 'paramedik'),
    Kelime('hospitalized', 'hastaneye yatırılmış'),
    Kelime('dermatologist', 'dermatolog'),
    Kelime('radiology', 'radyoloji'),
    Kelime('trauma centre', 'travma merkezi'),
    Kelime('emergency', 'acil durum'),
    Kelime('teaching hospital', 'öğretim hastanesi'),
    Kelime('birth', 'doğum'),
    Kelime('hospital pharmacy', 'hastane eczanesi'),
    Kelime('intensive care', 'yoğun bakım'),
    Kelime('hospital', 'hastane'),
    Kelime('quarantine', 'karantina'),
    Kelime('trauma', 'travma'),
    Kelime('wounded', 'yaralı'),
    Kelime('psychiatric', 'psikiyatrik'),
    Kelime('emergency department', 'acil servis'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(65, 125, 196, 1.0),
          title: Text("Unit2"),
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView.builder(
          itemCount: kelimeler2.length, //burayı eklemezsen range error verir
          itemBuilder: (context, index) {
            return FlipCard(
              fill: Fill.fillBack,
              direction: FlipDirection.HORIZONTAL,
              side: CardSide.FRONT,
              front: Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      kelimeler2[index].kelimeing,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              back: Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      kelimeler2[index].kelimetr,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        backgroundColor: Color.fromRGBO(197, 231, 253, 1.0),
      ),
    );
  }
}
