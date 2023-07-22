import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import '../kelime.dart';

class KelimeKartlari3 extends StatelessWidget {
  KelimeKartlari3({Key? key}) : super(key: key);

  List<Kelime> kelimeler1 = [
    Kelime("Cooking", "yemek yapmak"),
    Kelime("Coding", "kod yazmak"),
    Kelime("Gardening", "bahçe işleri yapmak"),
    Kelime("Photography", "fotoğraf çekmek"),
    Kelime("Writing", "yazı yazmak"),
    Kelime("Reading", "okumak"),
    Kelime("Dancing", "dans etmek"),
    Kelime("Swimming", "yüzmek"),
    Kelime("Hiking", "doğa yürüyüşü yapmak"),
    Kelime("Knitting", "örgü örmek"),
    Kelime("Playing chess", "satranç oynamak"),
    Kelime("Bird watching", "kuş gözlemi yapmak"),
    Kelime("Playing video games", "video oyunları oynamak"),
    Kelime("Singing", "şarkı söylemek"),
    Kelime("Playing basketball", "basketbol oynamak"),
    Kelime("Coin collecting", "madeni para biriktirmek"),
    Kelime("Sewing", "dikiş dikmek"),
    Kelime("Drawing", "çizim yapmak"),
    Kelime("Sculpting", "heykel yapmak"),
    Kelime("Playing football", "futbol oynamak"),
    Kelime("Meditating", "meditasyon yapmak"),
    Kelime("Playing tennis", "tenis oynamak"),
    Kelime("Playing board games", "masa oyunları oynamak")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unit3"),
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color.fromRGBO(65, 125, 196, 1.0),
        ),
        body: ListView.builder(
          itemCount: kelimeler1.length, //burayı eklemezsen range error verir
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
                      kelimeler1[index].kelimeing,
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
                      kelimeler1[index].kelimetr,
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
