import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import '../kelime.dart';


class KelimeKartlari1 extends StatelessWidget {
  KelimeKartlari1({Key? key}) : super(key: key);

  List<Kelime> kelimeler1 = [Kelime('wander', 'dolaşmak'),
    Kelime('trip', 'seyahat'),
    Kelime('journey', 'seyahat'),
    Kelime('tourism', 'turizm'),
    Kelime('traveler', 'gezgin'),
    Kelime('cruise', 'gemi yolculuğu'),
    Kelime('adventure', 'macera'),
    Kelime('tourist', 'turist'),
    Kelime('work', 'iş'),
    Kelime('vacation', 'tatil'),
    Kelime('tour', 'tur'),
    Kelime('fly', 'uçmak'),
    Kelime('traveller', 'gezgin'),
    Kelime('live', 'canlı'),
    Kelime('drive', 'sürmek'),
    Kelime('food', 'yiyecek'),
    Kelime('caravan', 'karavan'),
    Kelime('passport', 'pasaport'),
    Kelime('tourists', 'turistler'),
    Kelime('roam', 'dolaşmak'),
    Kelime('accommodation', 'konaklama'),
    Kelime('change of location', 'yer değişikliği'),
    Kelime('visits', 'ziyaretler'),
    Kelime('wayfaring', 'yolculuk'),
    Kelime('jaunt', 'gezinti'),
    Kelime('time', 'zaman'),
    Kelime('hotel', 'otel'),
    Kelime('exploration', 'keşif'),
    Kelime('visa', 'vize'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(65, 125, 196, 1.0),
          title: Text("Unit1"),
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
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
