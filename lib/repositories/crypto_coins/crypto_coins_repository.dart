import 'package:dio/dio.dart';

import 'models/crypto_coin.dart';

class CryptoCoinsRepository {
  // метод который работает сетью
  Future<List<CryptoCoin>> getCoinsList() async {
    //async метод нипонятно кода закончится
    //await ожидаем когда этот метот совершится
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV,&tsyms=USD',
    );

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final ctyptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(
        name: e.key,
        priceInUSD: price,
        imageUrl: 'https://www.cryptocompare.com/$imageUrl',
      );
    }).toList();
    return ctyptoCoinsList;
  }
}

// as Map<String, dynamic> - приводим прямым кастам к словарю String, dynamic
// и дальше мы у славоря вызываем список entries
//  entries - получаем значение все переведеные в знчение список 