// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:super_cryptocurrencies/repositories/crypto_coins/models/crypto_coin_details.dart';

class CryptoCoin extends Equatable {
  const CryptoCoin({
    required this.name,
    required this.details,
  });
  final String name;
  final CryptoCoinDetail details;

  @override
  List<Object> get props => [name, details];
}
