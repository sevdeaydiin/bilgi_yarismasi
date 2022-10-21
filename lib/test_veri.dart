import 'package:bilgi_yarismasi/soru.dart';

class TestVeri {
  int _soruIndex = 0;
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: 'Dünyanın ilk kadın savaş pilotu Sabiha Gökçen\'dir.',
        soruYaniti: true),
    Soru(soruMetni: 'Vücuttaki en güçlü kas bacak kasıdır.', soruYaniti: false),
    Soru(soruMetni: 'İsfahan İran\'ın bir şehridir.', soruYaniti: true),
    Soru(soruMetni: 'Afrika\'nın başkenti Kabil\'dir.', soruYaniti: true),
    Soru(soruMetni: 'Kahve ilk Yemen\'de keşfedilmiştir.', soruYaniti: false),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir.',
        soruYaniti: true),
    Soru(
        soruMetni:
            'Tsunami felaketinden en fazla zarar gören Güney Asya ülkesi Srilanka\'dır.',
        soruYaniti: false),
    Soru(soruMetni: 'Romen rakamında 0 yoktur.', soruYaniti: true),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) _soruIndex++;
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }

  int soruAdedi() {
    return _soruBankasi.length;
  }
}
